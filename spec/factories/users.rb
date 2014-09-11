# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    password "MyString"
    admin false
    cohort "MyString"
    email "MyString"
    graduate false
  end
end
