FactoryGirl.define do
  factory :item do
    title Faker::Lorem.sentence(1)
    priority Faker::Number.between(0, 3)
    percent_complete Faker::Number.between(0, 100)
    notes Faker::Lorem.paragraph(1)
    today Faker::Number.between(0,1)
    list
  end
end