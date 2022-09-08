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


puts "✅ Done seeding!"
