Movie.destroy_all
Character.destroy_all

25.times do 
    movie = Movie.create(
            title: Faker::Movie.title, 
            famous_quote: Faker::Movie.quote,
            genre: Faker::Book.genre
        )

    5.times do 
        movie.characters.create(name: Faker::GreekPhilosophers.name)
    end
end

