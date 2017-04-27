class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :body
      t.string :author
      t.references :user

      t.timestamps
    end
  end
end
