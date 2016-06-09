class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :body
      t.integer :rating
      t.integer :article_id
      t.integer :user_id

      t.timestamps

    end
  end
end
