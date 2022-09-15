# == Schema Information
#
# Table name: tasks
#
#  id         :uuid             not null, primary key
#  status     :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Task < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true

  enum status: { no_status: 0, next_up: 1, in_progress: 2, completed: 2 }

  before_create :set_default_status
  after_commit :send_notification, if: -> { status_changed? }

  def set_default_status
    self.status ||= :no_status
  end

  def send_notification
    TaskMailer.with(task: self).status_changed.deliver_now
  end
end
