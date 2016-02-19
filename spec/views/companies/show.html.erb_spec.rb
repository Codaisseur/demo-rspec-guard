require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :logo => "Logo",
      :industry => "Industry",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Industry/)
    expect(rendered).to match(/MyText/)
  end
end
