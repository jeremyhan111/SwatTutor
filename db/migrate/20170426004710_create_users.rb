class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :category
      t.string :name
      t.string :year
      t.text :bio

      t.timestamps
    end
  end
end
