class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :skill, null: false
      t.integer :info_id, null: false

      t.timestamps
    end
    add_index :teachers, :info_id, unique: true
  end
end
