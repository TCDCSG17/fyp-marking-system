class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.text :input1
      t.text :input2
      t.text :input3
      t.integer :weight1
      t.integer :weight2
      t.integer :weight3
      t.integer :mark1
      t.integer :mark2
      t.integer :mark3
      t.float :final_mark
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
