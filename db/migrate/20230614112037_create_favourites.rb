class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.string :cocktail
      t.integer :user_id
      t.integer :cocktail_id

      t.timestamps
    end
  end
end
