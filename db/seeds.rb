# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "test1@example.com", password: "password1", name: "佐藤幸司")
user2 = User.create!(email: "test2@example.com", password: "password2", name: "鈴木正人")
user3 = User.create!(email: "test3@example.com", password: "password3", name: "高橋由希子")
user4 = User.create!(email: "test4@example.com", password: "password4", name: "田中昇")
user5 = User.create!(email: "test5@example.com", password: "password5", name: "伊藤亜希")

puts "データの投入に成功しました！"
