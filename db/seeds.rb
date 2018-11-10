# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(first_name: 'Admin', last_name: 'McAdmins', email: 'admin@example.com', admin: true, password: 'password', password_confirmation: 'password')
User.create!(first_name: 'User1First', last_name: 'User1Last', email: 'user1@example.com', admin: false, password: 'password', password_confirmation: 'password')

Cat.destroy_all
Cat.create!(name: 'Gretchen')
Cat.create!(name: 'Fluffy')
Cat.create!(name: 'Mittens')
