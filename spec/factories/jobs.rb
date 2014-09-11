# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    company "MyString"
    application_url "MyString"
    title "MyString"
    location "MyString"
    found_by "MyString"
    status "MyString"
    notes "MyText"
    contact "MyString"
    strengths "MyText"
    intrique 1
    intrique_reason "MyText"
    due_date "2014-09-11"
    user nil
  end
end
