puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
planet_grapes =  { name: "Planet Grapes", address: "53 Cleveland St, London W1T 4JJ", category: "french" }
heirloom_cafe =  { name: "Heirloom Cafe", address: "Native at Browns, 39 Brook St, London W1K 4JE", category: "belgian" }

[ dishoom, pizza_east, planet_grapes, heirloom_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
