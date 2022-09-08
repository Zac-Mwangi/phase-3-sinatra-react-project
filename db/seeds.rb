puts "🌱 Seeding spices..."

# Seed your database here

# category
Category.create(category: "clothing")
Category.create(category: "laptop")
Category.create(category: "electronics")
Category.create(category: "sporting")


puts "✅ Done seeding!"
