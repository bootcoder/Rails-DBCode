require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :username => "Username",
      :password => "Password",
      :admin => false,
      :cohort => "Cohort",
      :email => "Email",
      :graduate => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Password/)
    rendered.should match(/false/)
    rendered.should match(/Cohort/)
    rendered.should match(/Email/)
    rendered.should match(/false/)
  end
end
