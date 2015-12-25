class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :event_id
      t.text :update

      t.timestamps null: false
    end
  end
end
