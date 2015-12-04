class CreateEventRegistereds < ActiveRecord::Migration
  def change
    create_table :event_registereds do |t|
      t.references :registered, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
