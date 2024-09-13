# Users
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobarbaz",
             password_confirmation: "foobarbaz",
             admin:     true)

300.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# マイクロポスト
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

# ユーザーフォローのリレーションシップを作成する
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }



User.create!(name:  "Kyo Watanabe",
             email: "watanabe.kyo19991224@gmail.com",
             password:              "aaaaaaaa",
             password_confirmation: "aaaaaaaa",
             admin:     true)

watanabe = User.find_by(name: "Kyo Watanabe")
100.times do |n|
  other_following = User.find(n+1)
  other_followers = User.find(n+101)

  unless(other_following == watanabe)
    watanabe.follow(other_following)
    other_followers.follow(watanabe)
  end
end
    