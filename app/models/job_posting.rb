class JobPosting < ActiveRecord::Base
  belongs_to :company

  validates_inclusion_of :status, in: %w(vacant cancelled)

  before_validation :set_default_status!

  def vacant?
    status == "vacant"
  end

  def set_default_status!
    self.status ||= "vacant"
  end
end
