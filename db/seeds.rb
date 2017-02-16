Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktail_ingredients_data = JSON.parse(open(url).read)
cocktail_ingredients_data["drinks"].each do |ingredient|
Ingredient.create(name: ingredient["strIngredient1"])

end
