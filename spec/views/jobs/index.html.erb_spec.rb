require 'spec_helper'

describe "jobs/index" do
  before(:each) do
    assign(:jobs, [
      stub_model(Job,
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
      ),
      stub_model(Job,
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
      )
    ])
  end

  it "renders a list of jobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Application Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Found By".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
