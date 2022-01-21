# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE patients RESTART IDENTITY CASCADE")

user1 = User.create!(email: "test1@example.com", password: "password1", name: "佐藤幸司")
user2 = User.create!(email: "test2@example.com", password: "password2", name: "鈴木正人")
user3 = User.create!(email: "test3@example.com", password: "password3", name: "高橋由希子")
user4 = User.create!(email: "test4@example.com", password: "password4", name: "田中昇")
user5 = User.create!(email: "test5@example.com", password: "password5", name: "伊藤亜希")

patient1 = user1.patients.create!(name: "佐藤一郎", birthday: "1930-04-01", gender: "男", address: "水戸市", degree_of_care: "要介護2", key_person: "長男")
patient2 = user2.patients.create!(name: "鈴木幸子", birthday: "1956-01-15", gender: "女", address: "石岡市", degree_of_care: "要介護3", key_person: "夫")
patient3 = user3.patients.create!(name: "高橋次郎", birthday: "1940-10-03", gender: "男", address: "那珂市", degree_of_care: "要介護1", key_person: "長女")

information = user1.informations.create!(comment: "予後良好です。", patient_id: patient1.id)
information = user1.informations.create!(comment: "玄関に段差があります。\nスロープ導入を紹介しています。", patient_id: patient1.id)
information = user2.informations.create!(comment: "簡易入浴でお願いします。", patient_id: patient2.id)
information = user3.informations.create!(comment: "食事は17時に徹底して下さい。", patient_id: patient3.id)

puts "データの投入に成功しました！"
