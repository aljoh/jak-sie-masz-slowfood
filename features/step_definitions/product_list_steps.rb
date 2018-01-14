Given("the following products exist within a specific restaurant") do |table|
  table.hashes.each do |product|
    held_by_restaurant = Restaurant.find_by(name: product[:restaurant])
    FactoryBot.create(:product,
    name: product[:name],
    restaurant: held_by_restaurant)
  end
end

When("I visit the {string} show page") do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  visit restaurant_path(restaurant)
end
