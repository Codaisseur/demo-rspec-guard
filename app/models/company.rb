class Company < ActiveRecord::Base
  has_many :job_postings
  validates_presence_of :name
end
