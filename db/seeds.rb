require 'faker'
include Faker

100.times do
    Score.create(name: Faker::Name.first_name, score: rand(6))
end