# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.destroy_all

Recipe.create(
  name: "Creamy garlic pasta",
  description: "STEP 1
 Begin by cooking the pasta following pack instructions. Meanwhile, melt the butter in your largest frying pan. Once foaming, add the garlic and 25 twists of a black pepper mill. Cook for 4-5 mins, until the garlic is light golden and fragrant.
 STEP 2
 Stir in the flour to form a paste. Stir for 1-2 mins, then slowly whisk in the chicken stock until you have a smooth sauce. Pour in the double cream and sprinkle in most of the parmesan. Stir until everything is melted and combined, then season to taste.
 STEP 3
 Transfer the pasta straight into the sauce, alongside a good splash of the cooking water. Mix thoroughly, adding a little more pasta water if necessary, until you have a thick and glossy sauce.
 STEP 4
 Divide between four bowls and serve topped with the chopped parsley and remaining parmesan.
",
  url: "https://images.immediate.co.uk/production/volatile/sites/30/2024/01/Creamy-garlic-pasta-d8623e7.jpg?quality=90&webp=true&resize=600,545",
  rating: 8.5
)

Recipe.create(
  name: "Couscous salad",
  description: "Tip the couscous into a large bowl and pour over the stock. Cover, then leave for 10 mins until fluffy and all the stock has been absorbed. Meanwhile, slice the onions and pepper, and dice the cucumber. Add these to the couscous, fork through the pesto, crumble in the feta, then sprinkle over pine nuts to serve.",
  url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/couscous-9ab75f0.jpg?quality=90&webp=true&resize=500,454",
  rating: 8.1
)

Recipe.create(
  name: "Lemon pudding",
  description: "STEP 1
 Mix the sugar, butter, flour, eggs, lemon zest and vanilla together until creamy, then spoon into a medium microwave-proof baking dish. Microwave on High for 3 mins, turning halfway through cooking, until risen and set all the way through. Leave to stand for 1 min.
 STEP 2
 Meanwhile, heat the lemon curd for 30 secs in the microwave and stir until smooth. Pour all over the top of the pudding and serve with a dollop of crème fraîche or scoops of ice cream.",
  url: "https://images.immediate.co.uk/production/volatile/sites/30/2008/05/microwave-lemon-sponge-pudding-d9e8e37.jpg?quality=90&webp=true&resize=600,545",
  rating: 7.8
)

Recipe.create(
  name: "Instant frozen berry yogurt",
  description: "Blend berries, yogurt and honey or agave syrup in a food processor for 20 seconds, until it comes together to a smooth ice-cream texture. Scoop into bowls and serve.",
  url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1029452_10-563fda8.jpg?quality=90&webp=true&resize=440,400",
  rating: 9
)
