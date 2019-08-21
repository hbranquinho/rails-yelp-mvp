require 'faker'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese',  'italian', 'japanese', 'french', 'belgian'].sample
  )
  5.times do
    Review.create(
      content: Faker::Restaurant.review,
      rating: [0, 1, 2, 3, 4, 5].sample,
      restaurant_id: restaurant.id
    )
  end
end
