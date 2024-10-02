# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "json"
require "open-uri"

Bookmark.destroy_all
Recipe.destroy_all
categories = [ "Breakfast", "Pasta", "Seafood", "Dessert", "Chicken", "Pork", "Vegetarian", "Beef" ]

def recipe_builder(id)
  recipe_url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  recipes = URI.parse(recipe_url).read
  recipes_data = JSON.parse(recipes)
  recipe = recipes_data["meals"][0]
  p recipe
  Recipe.create(
    name: recipe["strMeal"],
    description: recipe["strInstructions"],
    url: recipe["strMealThumb"],
    rating: rand(0..5)
    )
end

categories.each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  meals = URI.parse(url).read
  data = JSON.parse(meals)
  data["meals"].first(5).each do |meal|
    recipe_builder(meal["idMeal"])
  end
end
