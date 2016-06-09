class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :date
      t.text :link
      t.integer :journalist_id

      t.timestamps

    end
  end
end
