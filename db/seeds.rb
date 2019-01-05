# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(
    :name => "My Name",
    :email => "mevaercamp@gmail.com",
    :password => "Kaszanka50",
    :password_confirmation => "Kaszanka50"
)
admin.toggle!(:admin)
# I assume "admin.update_attribute(:admin, true)" would work as well.