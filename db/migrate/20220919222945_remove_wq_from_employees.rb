class RemoveWqFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :wqempid, :string
  end
end

# rails g migration RemoveWqFromEmployees