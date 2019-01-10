FactoryBot.define do
  factory :user do
    name { Faker::Internet.name }
    email { Faker::Internet.email }
    password { "makers" }
    password_confirmation { "makers" }
  end
end
