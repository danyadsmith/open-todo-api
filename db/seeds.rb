# ##############################################################
# Create Users (10)
# ##############################################################

9.times do
  user = User.create!(
    username: Faker::Internet.user_name,
    password_digest: "opentodoapi"
  )
end

my_account = User.create!(
  username: "danyadsmith",
  password_digest: "opentodoapi"
)

users = User.all

# ##############################################################
# Create Lists (50)
# ##############################################################

50.times do
  list = List.create!(
    title: Faker::Lorem.sentence,
    list_type: Faker::Number.between(0, 5),
    user: users.sample
  )
  list.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end

lists = List.all

# ##############################################################
# Create Items (250)
# ##############################################################

250.times do
  item = Item.create!(
    title: Faker::Lorem.sentence,
    priority: Faker::Number.between(0, 3),
    percent_complete: Faker::Number.between(0, 100),
    notes: Faker::Lorem.paragraph(1),
    today: Faker::Number.between(0,1),
    list: lists.sample
  )
  item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end

