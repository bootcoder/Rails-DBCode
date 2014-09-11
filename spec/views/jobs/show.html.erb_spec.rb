require 'spec_helper'

describe "jobs/show" do
  before(:each) do
    @job = assign(:job, stub_model(Job,
      :company => "Company",
      :application_url => "Application Url",
      :title => "Title",
      :location => "Location",
      :found_by => "Found By",
      :status => "Status",
      :notes => "MyText",
      :contact => "Contact",
      :strengths => "MyText",
      :intrique => 1,
      :intrique_reason => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    rendered.should match(/Application Url/)
    rendered.should match(/Title/)
    rendered.should match(/Location/)
    rendered.should match(/Found By/)
    rendered.should match(/Status/)
    rendered.should match(/MyText/)
    rendered.should match(/Contact/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
