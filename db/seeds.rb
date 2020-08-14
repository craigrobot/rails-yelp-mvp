# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all
puts "Database is clean"

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  puts "Restaurant #{restaurant.id} is created"

  2.times do
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
    )
    review.restaurant = restaurant
    review.save
  end
end
  # .restaurant is the setter property from the class Review, value on the right is the variable
  puts "Done!"

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
