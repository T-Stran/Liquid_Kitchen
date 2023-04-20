# Seed templates for cokctails and ingredients
# Cocktail.new(name: "", recipe: "", glass_type: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "",
#              strIngredient5: "", strMeasure1: "", strMeasure2: "", strMeasure3: "", strMeasure4: "", strMeasure5: "",
#              strDrinkThumb: "")
# Ingredient.create!(name: "", ingredient_type: "", user_id: tester.id, cocktail_id: )

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

pimms = Cocktail.new(name: "Pimms", recipe: "Fill a jug with ice and pour over the Pimm’s and lemonade. Give it a good stir then add the mint, cucumber and fruit.",
                     glass_type: "Tall", strIngredient1: "Pimm's No 1", strIngredient2: "lemonade", strIngredient3: "mint", strIngredient4: "cucumber",
                     strIngredient5: "strawberry", strIngredient6: "orange", strMeasure1: "200ml", strMeasure2: "600ml", strMeasure3: "some",
                     strMeasure4: "some", strMeasure5: "some", strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2013/11/Pimms-2b23cd0.jpg?quality=90&webp=true&resize=600,545")

pimms.save!

pfmartini = Cocktail.new(name: "Passion Fruit Martini", recipe: "Scoop the seeds from one of the passion fruits into the glass of a cocktail shaker, add the vodka, passoa, lime juice and sugar syrup.
                         Add a handful of ice and shake well, strain into 2 martini glasses, top up with prosecco, then add half a passion fruit to each. Serve immediately.",
                         glass_type: "martini", strIngredient1: "passion fruit", strIngredient2: "vanilla vodka", strIngredient3: "passoa", strIngredient4: "lime juice",
                         strIngredient5: "sugar syrup", strMeasure1: "2", strMeasure2: "60ml", strMeasure3: "30ml", strMeasure4: "1 tbsp", strMeasure5: "1 tbsp",
                         strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/passionfruit-pornstar-martini-df3bbfb.jpg?quality=90&webp=true&resize=440,400")

pfmartini.save!

pinacolada = Cocktail.new(name: "Pina Colada", recipe: "Put all the ingredients along with a handful of ice in a blender until smooth. Pour into a tall glass and garnish as you like.",
                          glass_type: "tall", strIngredient1: "pineapple juice", strIngredient2: "white rum", strIngredient3: "coconut cream",
                          strIngredient4: "pineapple", strMeasure1: "120ml", strMeasure2: "60ml", strMeasure3: "60ml", strMeasure4: "some",
                          strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2013/11/pina-colada-c68aca7.jpg?quality=90&webp=true&resize=600,545")

pinacolada.save!

strawberrydaiquiri = Cocktail.new(name: "Strawberry Daiquiri", recipe: "Blend the strawberries then push the resulting puree through a sieve to remove some of the seeds. Tip the sieved puree into the blender again and add the ice,
                                  rum, 1-2 tbsp sugar syrup depending on how sweet you like your drinks and lime juice. Blend again and divide the mixture between 2 Martini glasses.",
                                  glass_type: "martini", strIngredient1: "strawberry", strIngredient2: "ice", strIngredient3: "rum", strIngredient4: "lime juice",
                                  strIngredient5: "sugar syrup", strMeasure1: "500g", strMeasure2: "200g", strMeasure3: "100ml", strMeasure4: "1tbsp", strMeasure5: "1-2 tbsp",
                                  strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/frozen-strawbz-329b8e5.jpg?quality=90&webp=true&resize=440,400")

strawberrydaiquiri.save!

rumpunch = Cocktail.new(name: "Rum Punch", recipe: "Pour the juices, rum, sugar syrup, grenadine and Angostura bitters into a large jug and give it a good stir. Pop into the fridge to chill for 1 hr.",
                        glass_type: "Tall", strIngredient1: "orange juice", strIngredient2: "lime juice", strIngredient3: "golden rum", strIngredient4: "sugar syrup",
                        strIngredient5: "grenadine", strIngredient6: "Angostura bitters",strMeasure1: "175ml",
                        strMeasure2: "75ml", strMeasure3: "150ml", strMeasure4: "50ml", strMeasure5: "1 tbsp", strMeasure6: "1 tsp",
                        strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/rum-punch-5c8fd79.jpg?quality=90&webp=true&resize=440,400")

rumpunch.save!

cosmopolitan = Cocktail.new(name: "Cosmopolitan", recipe: "Shake ingredients in a cocktail shaker with ice and strain into a cocktail glass.",
                            glass_type: "martini", strIngredient1: "lemon vodka", strIngredient2: "triple sec", strIngredient3: "cranberry juice",
                            strIngredient4: "lime juice", strMeasure1: "45ml", strMeasure2: "15ml", strMeasure3: "30ml", strMeasure4: "10ml",
                            strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cosmopolitan-7a6874f.jpg?quality=90&webp=true&resize=440,400")

cosmopolitan.save!

negroni = Cocktail.new(name: "Classic Negroni", recipe: "Pour the gin, vermouth and Campari into a mixing glass or jug with ice. Stir well until the outside of the glass feels cold.",
                       glass_type: "tumbler", strIngredient1: "gin", strIngredient2: "vermouth", strIngredient3: "campari", strIngredient4: "ice",
                      strMeasure1: "25ml", strMeasure2: "25ml", strMeasure3: "25ml", strMeasure4: "some",
                       strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/classic-negroni-6649448.jpg?quality=90&webp=true&resize=440,400")

negroni.save!

aperolspritz = Cocktail.new(name: "Aperol Spritz", recipe: "Put a couple of cubes of ice into 2 glasses and add a 50 ml measure of Aperol to each. Divide the prosecco between the glasses and then top up with soda, if you like.",
                            glass_type: "wine", strIngredient1: "ice", strIngredient2: "aperol", strIngredient3: "prosecco", strIngredient4: "soda water",
                            strMeasure1: "some", strMeasure2: "100ml", strMeasure3: "150ml", strMeasure4: "top up",
                            strDrinkThumb: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/aperol-spritz-0e58f7b.jpg?quality=90&webp=true&resize=440,400")

aperolspritz.save!

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
pimmsone = Ingredient.create(name: "Pimm's No 1", ingredient_type: "spirit", user_id: tester.id, cocktail_id: pimms.id)
lemonade = Ingredient.create(name: "Lemonade", ingredient_type: "mixer", user_id: tester.id, cocktail_id: pimms.id)
mint2 = Ingredient.create!(name: "Mint", ingredient_type: "garnish", user_id: tester.id, cocktail_id: pimms.id)
orange = Ingredient.create!(name: "Orange", ingredient_type: "fruit", user_id: tester.id, cocktail_id: pimms.id)
cucumber = Ingredient.create!(name: "Cucumber", ingredient_type: "fruit", user_id: tester.id, cocktail_id:pimms.id)
strawberry = Ingredient.create!(name: "Strawberry", ingredient_type: "fruit", user_id: tester.id, cocktail_id: pimms.id)
passionfruit = Ingredient.create!(name: "Passion Fruit", ingredient_type: "fruit", user_id: tester.id, cocktail_id: pfmartini.id )
vanillavodka = Ingredient.create!(name: "Vanilla Vodka", ingredient_type: "spirit", user_id: tester.id, cocktail_id: pfmartini.id)
passoa = Ingredient.create!(name: "Passoa", ingredient_type: "liquer", user_id: tester.id, cocktail_id: pfmartini.id)
limejuice2 = Ingredient.create!(name: "Lime Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: pfmartini.id)
sugarsyrup = Ingredient.create!(name: "Sugar Syrup", ingredient_type: "sugar", user_id: tester.id, cocktail_id: pfmartini.id)
pineapplejuice = Ingredient.create!(name: "Pineapple Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: pinacolada.id)
whiterum2 = Ingredient.create!(name: "White Rum", ingredient_type: "spirit", user_id: tester.id, cocktail_id: pinacolada.id)
coconutcream = Ingredient.create!(name: "Coconut Cream", ingredient_type: "cream", user_id: tester.id, cocktail_id: pinacolada.id)
pineapple = Ingredient.create!(name: "Pineapple", ingredient_type: "fruit", user_id: tester.id, cocktail_id: pinacolada.id)
strawberry2 = Ingredient.create!(name: "Strawberry", ingredient_type: "fruit", user_id: tester.id, cocktail_id: strawberrydaiquiri.id)
ice = Ingredient.create!(name: "Ice", ingredient_type: "ice", user_id: tester.id, cocktail_id: strawberrydaiquiri.id)
rum = Ingredient.create!(name: "Rum", ingredient_type: "spirit", user_id: tester.id, cocktail_id: strawberrydaiquiri.id)
limejuice3 = Ingredient.create!(name: "Lime Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: strawberrydaiquiri.id)
sugarsyrup2 = Ingredient.create!(name: "Sugar Syrup", ingredient_type: "sugar", user_id: tester.id, cocktail_id: strawberrydaiquiri.id)
orangejuice = Ingredient.create!(name: "Orange Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: rumpunch.id)
limejuice4 = Ingredient.create!(name: "Lime Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: rumpunch.id)
goldenrum = Ingredient.create!(name: "Golden Rum", ingredient_type: "spirit", user_id: tester.id, cocktail_id: rumpunch.id)
sugarsyrup3 = Ingredient.create!(name: "Sugar Syrup", ingredient_type: "sugar", user_id: tester.id, cocktail_id: rumpunch.id)
grenadine = Ingredient.create!(name: "Grenadine", ingredient_type: "syrup", user_id: tester.id, cocktail_id: rumpunch.id)
angobitters = Ingredient.create!(name: "Angostura Bitters", ingredient_type: "bitters", user_id: tester.id, cocktail_id: rumpunch.id)
lemonvodka = Ingredient.create!(name: "Lemon Vodka", ingredient_type: "spirit", user_id: tester.id, cocktail_id: cosmopolitan.id)
triplesec = Ingredient.create!(name: "Triple Sec", ingredient_type: "spirit", user_id: tester.id, cocktail_id: cosmopolitan.id)
cranberryjuice = Ingredient.create!(name: "Cranberry Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: cosmopolitan.id)
limejuice5 = Ingredient.create!(name: "Lime Juice", ingredient_type: "juice", user_id: tester.id, cocktail_id: cosmopolitan.id)
gin = Ingredient.create!(name: "Gin", ingredient_type: "spirit", user_id: tester.id, cocktail_id: negroni.id)
vermouth = Ingredient.create!(name: "Vermouth", ingredient_type: "spirit", user_id: tester.id, cocktail_id: negroni.id)
campari = Ingredient.create!(name: "Campari", ingredient_type: "spirit", user_id: tester.id, cocktail_id: negroni.id)
ice2 = Ingredient.create!(name: "Ice", ingredient_type: "ice", user_id: tester.id, cocktail_id: negroni.id)
ice3 = Ingredient.create!(name: "Ice", ingredient_type: "ice", user_id: tester.id, cocktail_id: aperolspritz.id)
aperol = Ingredient.create!(name: "Aperol", ingredient_type: "liquer", user_id: tester.id, cocktail_id: aperolspritz.id)
prosecco = Ingredient.create!(name: "Prosecc", ingredient_type: "", user_id: tester.id, cocktail_id: aperolspritz.id)
sodawater2 = Ingredient.create!(name: "Soda Water", ingredient_type: "mixer", user_id: tester.id, cocktail_id: aperolspritz.id)
