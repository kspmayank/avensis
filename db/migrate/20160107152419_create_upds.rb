class CreateUpds < ActiveRecord::Migration
  def change
    create_table :upds do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
