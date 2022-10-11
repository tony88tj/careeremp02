class RemoveAdpdeptFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :adpdept, :string
end

end