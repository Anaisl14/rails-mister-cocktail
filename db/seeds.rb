require 'json'
require 'open-uri'



# def cocktails(ingredient)
 # uri = ("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
#   json = JSON.parse(response.read)
#   cocktails = Cocktail.create(json[{name:'found'}])

# end

Ingredient.delete_all
url ='https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients["drinks"].each do |hash|
  puts hash
  Ingredients.create!(name: hash["strIngredient1"])
  puts Ingredients.count
end

10.times do
  Cocktail.create!(
    name: Faker::Pokemon.name)

5.times do
  dose = Dose.create!(
    description:"5cl",
    cocktail: cocktail
    )

end
# json = ActiveSupport::JSON.decode(File.read('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'))
# json.each do |a|
#      Cocktail.create!(a['data'], without_protection: true)
# end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
