FactoryBot.define do
    factory name :brand do
        title           { Faker::Superhero.name }
        bytitle         { Faker::Lorem.sentance(word_count: 10).downcase }
        img             { title.downcase } 
        description     { Faker::Lorem.sentance(word_count: 10) }

    end
end