class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :lawyer_code
      t.string :service_code
      t.integer :charges
      t.string :lawyer_name
      t.integer :years_of_exp
      t.string :location
      t.string :avg_rating

      t.timestamps
    end
  end
end
