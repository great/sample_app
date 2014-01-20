namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Intae the Great",
                 email: "greatkit@gmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    98.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+2}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end

