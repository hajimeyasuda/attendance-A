# coding: utf-8

User.create!(name: "管理者",
             email: "admin@email.com",
             password: "password",
             password_confirmation: "password",
             admin: true)
             
User.create!(name: "上長１",
             email: "superior_1@email.com",
             password: "password",
             password_confirmation: "password")
User.create!(name: "上長２",
             email: "superior_2@email.com",
             password: "password",
             password_confirmation: "password")

10.times do |n|
  name = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
