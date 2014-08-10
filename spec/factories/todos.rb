FactoryGirl.define do
  factory :todo do
    task {Faker::Lorem::sentence}
  end
end
