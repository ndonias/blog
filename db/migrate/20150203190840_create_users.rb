class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :password
      t.integer :age

      t.timestamps
    end
  end
end
