require 'rails_helper'

RSpec.describe JobPosting, type: :model do
  it { is_expected.to belong_to(:company) }

  describe "validations" do
    it { is_expected.to validate_inclusion_of(:status).in_array(%w(cancelled vacant)) }
  end

  describe "#vacant?" do
    let(:job) { JobPosting.create(title: "Junior Developer", description: "Pref. from Codaisseur" ) }
    subject { job }

    context "when not provided" do
      it { is_expected.to be_vacant }
    end

    context "when 'vacant'" do
      before { job.update(status: "vacant") }
      it { is_expected.to be_vacant }
    end

    context "when not 'vacant'" do
      before { job.update(status: "cancelled") }
      it { is_expected.not_to be_vacant }
    end
  end

  describe "#set_default_status!" do
    it do
      expect{ subject.set_default_status! }.to(
        change{ subject.status }.from(nil).to("vacant"))
    end
  end
end
