class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
	  t.string :name
	  t.string :status
	  t.string :notes
	  t.integer :user_id
      t.timestamps
    end
    add_index :interests, [:user_id, :created_at]
  end
end
