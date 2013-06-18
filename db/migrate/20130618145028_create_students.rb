class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :age, null: false
      t.integer :info_id, null: false

      t.timestamps
    end
    add_index :students, :info_id, unique: true
  end
end
