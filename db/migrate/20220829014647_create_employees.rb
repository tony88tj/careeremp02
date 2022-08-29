class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :lname
      t.string :sname
      t.string :name
      t.string :first
      t.string :last
      t.string :dname
      t.string :empid
      t.string :wqempid
      t.string :startdate
      t.string :adpdept
      t.string :dept
      t.string :paytype
      t.string :badgeno
      t.string :ext
      t.string :telephone
      t.string :cell
      t.string :pic

      t.timestamps
    end
  end
end
