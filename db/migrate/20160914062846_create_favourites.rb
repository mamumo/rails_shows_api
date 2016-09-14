class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
