class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :event_id
      t.string :designation
      t.string :username
      t.string :password_hash
      t.string :password_salt

      t.timestamps null: false
    end
  end
end
