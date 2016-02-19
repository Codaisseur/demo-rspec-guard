require 'rails_helper'

RSpec.describe "Companies", type: :request do
  let(:company) { Company.create(name: "Codaisseur") }

  describe "GET /companies" do
    it "works! (now write some real specs)" do
      get companies_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /companiessaoentuhasnoethusaoenthu" do
    it "also workzzz" do
      get company_path(company)
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE a Company" do
    before do
      company

      expect(Company.count).to eq 1
    end

    it "should destroy a company" do
      expect{ delete company_path(company) }.to(
        change{ Company.count }.from(1).to(0))
    end
  end
end
