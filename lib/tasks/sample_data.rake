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
  end
end