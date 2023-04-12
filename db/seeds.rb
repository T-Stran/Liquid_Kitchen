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

espressomartini = Cocktail.new(name: "Espresso Martini", recipe: "Start by making the sugar syrup. Put the caster sugar in a small pan over a medium heat and pour in 50ml water. Stir, and bring to the boil.
                               Turn off the heat and allow the mixture to cool. Put 2 martini glasses in the fridge to chill.
                               Once the sugar syrup is cold, pour 1 tbsp into a cocktail shaker along with a handful of ice, the vodka, espresso and coffee liqueur. Shake until the outside of the cocktail shaker feels icy cold.
                               Strain into the chilled glasses. Garnish each one with coffee beans if you like.", glass_type: "martini",
                               strIngredient1: "vodka", strIngredient2: "coffee", strIngredient3: "Kahlua", strIngredient4: "Golden Caster Sugar",
                               strMeasure1: "100ml", strMeasure2: "50ml", strMeasure3: "50ml", strMeasure4: "100g",
                               strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/espresso-martini-f099531.jpg?quality=90&webp=true&resize=440,400")
espressomartini.save!

tester = User.new(email: "test@test.com", password: "test123", first_name: "test", last_name: "test", username: "tester" )
tester.save!

whiterum = Ingredient.create!(name: "White Rum", ingredient_type: "spirit", user_id: tester.id, cocktail_id: mojito.id)
limejuice = Ingredient.create!(name: "Lime Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: mojito.id)
sodawater = Ingredient.create!(name: "Soda Water", ingredient_type: "mixer", user_id: tester.id, cocktail_id: mojito.id)
mint = Ingredient.create!(name: "mint", ingredient_type: "garnish", user_id: tester.id, cocktail_id: mojito.id)
granulatedsugar = Ingredient.create!(name: "Granulated Sugar", ingredient_type: "sugar", user_id: tester.id, cocktail_id: mojito.id)
vodka = Ingredient.create(name: "Vodka", ingredient_type: "spirit", user_id: tester.id, cocktail_id: espressomartini.id)
coffee = Ingredient.create(name: "Coffee", ingredient_type: "mixer", user_id: tester.id, cocktail_id: espressomartini.id)
kahlua = Ingredient.create(name: "Kahlua", ingredient_type: "spirit", user_id: tester.id, cocktail_id: espressomartini.id)
goldcsugar = Ingredient.create(name: "Golden Caster Sugar", ingredient_type: "sugar", user_id: tester.id, cocktail_id: espressomartini.id)
