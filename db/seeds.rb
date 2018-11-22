# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "peach")
Ingredient.create!(name: "soda")
Ingredient.create!(name: "strawberries")
Ingredient.create!(name: "curacao")
Ingredient.create!(name: "vodka")
Ingredient.create!(name: "cranberries")

Cocktail.create!(name: "TGV")
Cocktail.create!(name: "Trashed")
Cocktail.create!(name: "L'alcoolique anonyme")

Dose.create!(
  description: 'Only for the noobs',
  cocktail_id: Cocktail.find_by(name: "TGV").id,
  ingredient_id: Ingredient.find_by(name: "lemon").id
)
Dose.create!(
  description: 'Maximum alcool',
  cocktail_id: Cocktail.find_by(name: "Trashed").id,
  ingredient_id: Ingredient.find_by(name: "soda").id
)

Dose.create!(
  description: 'Explosing head',
  cocktail_id: Cocktail.find_by(name: "L'alcoolique anonyme").id,
  ingredient_id: Ingredient.find_by(name: "ice").id
)


