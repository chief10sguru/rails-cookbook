# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."
Recipe.destroy_all

puts "Creating new recipes...."
Recipe.create!(
  name: "Chicken Tikka",
  description: "Creamy & Delicious Chicken Tikka Masala", image_url: https://www.allrecipes.com/thmb/orIsAAaBiDAZYsp10qhYfB1YCIY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5133952_indian-chicken-tikka-masala_allrecipes-2000-b955e1b914a646c4938db0a807be7c70.jpg,
  rating: 4)

Recipe.create!(
  name: "Lamb Shank",
  description: "Slow Cooked Leg of Lamb",
  image_url: https://www.allrecipes.com/thmb/b5y8rHt38JtxpFqWIafQvDxNKW0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/beer-braised-lamb-shanks-photo-by-chef-john-5272240-2000-6a684dfafbe84992b693994c9db92770.jpg,
  rating: 5)

puts "Finished! Created #{Recipe.count} recipes."
