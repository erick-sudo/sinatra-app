require_relative '../config/environment'

puts "Seeding data"

120.times do
    Product.create(
        name: Faker::Commerce.product_name,
        price: rand(1..500)
    )
end

40.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )
end

400.times do
    Review.create(
        star_rating: rand(1..10),
        comment: Faker::Lorem.paragraph(sentence_count: 6),
        product_id: rand(Product.first.id..Product.last.id),
        user_id: rand(User.first.id..User.last.id)

    )
end

puts "Done seeding"