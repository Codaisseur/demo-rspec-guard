class AddStatusToJobPostings < ActiveRecord::Migration
  def change
    add_column :job_postings, :status, :string
  end
end
