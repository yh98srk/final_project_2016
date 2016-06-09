class CreateJournalists < ActiveRecord::Migration
  def change
    create_table :journalists do |t|
      t.string :name
      t.string :media

      t.timestamps

    end
  end
end
