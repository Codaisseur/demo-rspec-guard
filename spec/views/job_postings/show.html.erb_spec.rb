require 'rails_helper'

RSpec.describe "job_postings/show", type: :view do
  before(:each) do
    @job_posting = assign(:job_posting, JobPosting.create!(
      :title => "Title",
      :description => "MyText",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
