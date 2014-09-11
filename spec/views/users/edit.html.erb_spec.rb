require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :username => "MyString",
      :password => "MyString",
      :admin => false,
      :cohort => "MyString",
      :email => "MyString",
      :graduate => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_admin[name=?]", "user[admin]"
      assert_select "input#user_cohort[name=?]", "user[cohort]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_graduate[name=?]", "user[graduate]"
    end
  end
end
