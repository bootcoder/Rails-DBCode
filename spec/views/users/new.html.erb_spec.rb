require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :password => "MyString",
      :admin => false,
      :cohort => "MyString",
      :email => "MyString",
      :graduate => false
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_admin[name=?]", "user[admin]"
      assert_select "input#user_cohort[name=?]", "user[cohort]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_graduate[name=?]", "user[graduate]"
    end
  end
end
