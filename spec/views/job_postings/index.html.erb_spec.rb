require 'rails_helper'

RSpec.describe "job_postings/index", type: :view do
  before(:each) do
    assign(:job_postings, [
      JobPosting.create!(
        :title => "Title",
        :description => "MyText",
        :company => nil
      ),
      JobPosting.create!(
        :title => "Title",
        :description => "MyText",
        :company => nil
      )
    ])
  end

  it "renders a list of job_postings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
