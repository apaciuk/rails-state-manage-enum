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
FactoryBot.define do
  factory :task do
    title { "MyString" }
    status { 1 }
  end
end
