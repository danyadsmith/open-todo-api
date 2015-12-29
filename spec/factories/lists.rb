FactoryGirl.define do
  factory :list do
    title Faker::Lorem.sentence(1)
    list_type Faker::Number.between(0, 5)
    user
  end
end

