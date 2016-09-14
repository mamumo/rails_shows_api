class CreateFavouritesLists < ActiveRecord::Migration
  def change
    create_table :favourites_lists do |t|
      t.references :show, index: true, foreign_key: true
      t.references :favourite, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
