class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :category
      t.string :subject
      t.string :desc
      t.string :priority
      t.string :name
      t.string :tel
      t.string :status

      t.timestamps
    end
  end
end
