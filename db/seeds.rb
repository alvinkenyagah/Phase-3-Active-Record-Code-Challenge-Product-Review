# Create sample users
5.times do
    User.create(name: Faker::Name.name)
  end
  
  # Create sample products
  10.times do
    Product.create(item: Faker::Commerce.product_name, price: Faker::Commerce.price(range: 10..100))
  end
  
  # Create sample reviews
  30.times do
    Review.create(
      rating: Faker::Number.between(from: 1, to: 5),
      comment: Faker::Lorem.sentence,
      product_id: Product.pluck(:id).sample,
      user_id: User.pluck(:id).sample
    )
  end
  