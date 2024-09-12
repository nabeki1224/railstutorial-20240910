# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobarbaz",
             password_confirmation: "foobarbaz",
             admin: true)

User.create!(name:  "Kyo Watanabe",
             email: "watanabe.kyo19991224@gmail.com",
             password:              "aaaaaaaa",
             password_confirmation: "aaaaaaaa",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
