require 'rails_helper'

RSpec.describe "job_postings/new", type: :view do
  before(:each) do
    assign(:job_posting, JobPosting.new(
      :title => "MyString",
      :description => "MyText",
      :company => nil
    ))
  end

  it "renders new job_posting form" do
    render

    assert_select "form[action=?][method=?]", job_postings_path, "post" do

      assert_select "input#job_posting_title[name=?]", "job_posting[title]"

      assert_select "textarea#job_posting_description[name=?]", "job_posting[description]"

      assert_select "input#job_posting_company_id[name=?]", "job_posting[company_id]"
    end
  end
end
