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
  description: "Creamy & Delicious Chicken Tikka Masala", image_url: "https://www.allrecipes.com/thmb/orIsAAaBiDAZYsp10qhYfB1YCIY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/5133952_indian-chicken-tikka-masala_allrecipes-2000-b955e1b914a646c4938db0a807be7c70.jpg",
  rating: 4)

Recipe.create!(
  name: "Lamb Shank",
  description: "Slow Cooked Leg of Lamb",
  image_url: "https://www.allrecipes.com/thmb/b5y8rHt38JtxpFqWIafQvDxNKW0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/beer-braised-lamb-shanks-photo-by-chef-john-5272240-2000-6a684dfafbe84992b693994c9db92770.jpg",
  rating: 5)

  Recipe.create!(
  name: "Calzone",
  description: "Authentic Italian Calzone",
  image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2023%2F01%2F31%2F18874-Real-Italian-Calzones-ddmfs-127-4x3-1.jpg&q=60&c=sc&poi=auto&orient=true&h=512",
  rating: 4)

  Recipe.create!(
    name: "Xiao Long Bao",
    description: "Dim Sum done right",
    image_url: "https://www.allrecipes.com/thmb/a4qR6tGhp3e2TKv77lWEGFhnqIc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/289344-a8cd7a16938b47e6a7d2d09d47068088.jpg",
    rating: 4)

puts "Finished! Created #{Recipe.count} recipes."
