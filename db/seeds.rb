puts "🌱 Seeding spices..."

# Seed your database here

# category
Category.create(category: "clothing")
Category.create(category: "laptop")
Category.create(category: "electronics")
Category.create(category: "sporting")


# users
User.create(username: "stella" , password: "123")
User.create(username: "maina" , password: "123")


# commennts
Comment.create(name: "stella" , email: "stl@gmail.com" , message: "hello there")
Comment.create(name: "maina" , email: "maina@gmail.com" , message: "hello an here")


# products
Product.create(
    title: "Dam Bells",
    price: "40000",
    description: "great",
    category: "sporting",
    image: "https://images.unsplash.com/photo-1570829460005-c840387bb1ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    rating: 2.5
)

puts "✅ Done seeding!"