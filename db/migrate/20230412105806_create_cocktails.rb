class CreateCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :recipe
      t.string :glass_type
      t.string :strIngredient1
      t.string :strIngredient2
      t.string :strIngredient3
      t.string :strIngredient4
      t.string :strIngredient5
      t.string :strIngredient6
      t.string :strIngredient7
      t.string :strIngredient8
      t.string :strIngredient9
      t.string :strIngredient10
      t.integer :strMeasure1
      t.integer :strMeasure2
      t.integer :strMeasure3
      t.integer :strMeasure4
      t.integer :strMeasure5
      t.integer :strMeasure6
      t.integer :strMeasure7
      t.integer :strMeasure8
      t.integer :strMeasure9
      t.integer :strMeasure10
      t.string :strDrinkThumb

      t.timestamps
    end
  end
end
