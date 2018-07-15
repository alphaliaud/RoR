# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create! do |p|
    p.first_name = Faker::Name.name
    p.last_name = Faker::Name.name
    p.phone_number = Faker::Name.name
    p.email = Faker::Internet.email
    p.password = Faker::Config.random.seed
    p.date_of_birth = Faker::Date.name
  end
end


10.times do
  Post.create! do |p|
    p.post_title = Faker::Book.title
    p.remote_post_file_url = "http://picsum.photos/346/265/?" + rand(1..8000).to_s
    p.post_header = Faker::Lorem.paragraph(40, true, 60)
    p.post_author = Faker::Artist.name
    p.post_comment = Faker::Lorem.paragraph(2, true, 3)
    p.date_of_publication = Faker::Date.backward(18)
    p.user_id = User.order('random()').last.id
  end
end


