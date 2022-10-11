class RemovesnameFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :sname, :string
  end
end
