FactoryBot.define do
  factory :feedback do
    content { Faker::Lorem.sentence(word_count: 8) }
    rating { rand(1..5) }
    likes_count { 0 }
  end
end
