require 'spec_helper'

describe "jobs/edit" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :company => "MyString",
      :application_url => "MyString",
      :title => "MyString",
      :location => "MyString",
      :found_by => "MyString",
      :status => "MyString",
      :notes => "MyText",
      :contact => "MyString",
      :strengths => "MyText",
      :intrique => 1,
      :intrique_reason => "MyText",
      :user => nil
    ))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_path(@job), "post" do
      assert_select "input#job_company[name=?]", "job[company]"
      assert_select "input#job_application_url[name=?]", "job[application_url]"
      assert_select "input#job_title[name=?]", "job[title]"
      assert_select "input#job_location[name=?]", "job[location]"
      assert_select "input#job_found_by[name=?]", "job[found_by]"
      assert_select "input#job_status[name=?]", "job[status]"
      assert_select "textarea#job_notes[name=?]", "job[notes]"
      assert_select "input#job_contact[name=?]", "job[contact]"
      assert_select "textarea#job_strengths[name=?]", "job[strengths]"
      assert_select "input#job_intrique[name=?]", "job[intrique]"
      assert_select "textarea#job_intrique_reason[name=?]", "job[intrique_reason]"
      assert_select "input#job_user[name=?]", "job[user]"
    end
  end
end
