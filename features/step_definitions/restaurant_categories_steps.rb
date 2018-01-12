Given("the following categories exist") do |table|
  table.hashes.each do |restaurant_category|
    FactoryBot.create(:restaurant_category, restaurant_category)
  end
end

Given("these restaurants with respective categories exist") do |table|
  table.hashes.each do |restaurant|
    category = RestaurantCategory.find_by(name: restaurant[:category])
    FactoryBot.create(:restaurant,
       name: restaurant[:name],
       restaurant_category: category)
  end
end


Then("I would like to see {string} in the {string} category") do |restaurant_name, category_name|
  within "#restaurant_category-#{category_name}" do
    expect(page).to have_content restaurant_name
  end
end
