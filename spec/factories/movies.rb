FactoryBot.define do
  factory :movie do
    title { Faker::Name.name }
    genre { Faker::Name.name }
    year { '2021-11-22' }
    image { 'https://via.placeholder.com/300x200' }
    description { Faker::Lorem.question(word_count: 4, supplemental: false, random_words_to_add: 0) }
  end
end
