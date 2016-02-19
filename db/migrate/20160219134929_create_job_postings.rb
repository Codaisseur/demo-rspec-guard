class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :title
      t.text :description
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
