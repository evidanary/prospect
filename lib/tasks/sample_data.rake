namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Yash Ranadive",
                         email: "yash.ranadive@gmail.com",
                         password: "prospect")
                         
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@yasher.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password)
    end
    users = User.all(limit: 6)
    5.times do
      name = Faker::Name.first_name
      status = Faker::Lorem.sentence(5)
      notes = Faker::Lorem.paragraph(3)
      users.each { |user| user.interests.create!(name: name, status: status, notes: notes) }
    end
  end
end