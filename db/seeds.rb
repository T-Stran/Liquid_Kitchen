# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting database"
Cocktail.destroy_all
Ingredient.destroy_all
User.destroy_all
puts "Database deleted"

puts "Generating database"

mojito = Cocktail.new(name: "Mojito", recipe: "Muddle the lime juice, sugar and mint leaves in a small jug, crushing the mint as you go.
                      Pour into a tall glass and add a handful of ice.Pour over the rum, stirring with a long-handled spoon. Top up with soda water, garnish with mint and serve.",
                      glass_type: "Tall", strIngredient1: "white rum", strIngredient2: "lime juice", strIngredient3: "soda water", strIngredient4: "mint leaves",
                      strIngredient5: "sugar", strMeasure1: "60 ml", strMeasure2: "1", strMeasure3: "1", strMeasure4: "some", strMeasure5: "1 tsp",
                      strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mojito-cocktails-150961e.jpg?quality=90&webp=true&resize=430,390")
mojito.save!
