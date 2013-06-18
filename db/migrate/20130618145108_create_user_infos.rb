class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_type_id, null: false
      t.timestamps
    end
    add_index :user_infos, :user_type_id
  end
end
