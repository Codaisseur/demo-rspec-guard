class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.string :industry
      t.text :description

      t.timestamps null: false
    end
  end
end
