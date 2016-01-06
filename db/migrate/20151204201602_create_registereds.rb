class CreateRegistereds < ActiveRecord::Migration
  def change
    create_table :registereds do |t|
      t.string :name
      t.string :college
      t.string :branch
      t.string :year
      t.string :gender
      t.string :email
      t.string :mobile

      t.timestamps null: false
    end
  end
end
