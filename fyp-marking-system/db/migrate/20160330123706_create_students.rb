class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :StudentNumber
      t.text :ProjectTitle
      t.text :Reader1
      t.text :Reader2
      t.text :Reader3

      t.timestamps null: false
    end
  end
end
