class AddColServiceNameToLawyer < ActiveRecord::Migration
  def change
    add_column :lawyers, :service_name, :string
  end
end
