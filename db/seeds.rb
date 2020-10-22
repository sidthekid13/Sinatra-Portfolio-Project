Post.destroy_all
User.destroy_all

5.times do
    User.create(username: Faker::TvShows::RickAndMorty.character,
     email: Faker::Internet.email,
     password: "password")
end

20.times do
    Post.create(title: Faker::Book.title, 
    body: Faker::TvShows::MichaelScott.quote,
        user_id: rand(1..5))
end