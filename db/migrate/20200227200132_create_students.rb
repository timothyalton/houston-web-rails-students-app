class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.integer :age
      t.integer :teacher_id
      t.timestamps
    end
  end
end
