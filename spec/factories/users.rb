FactoryBot.define do
  factory :user do
    email { "test@test.com" }
    password { "123456" }
    first_name { "Chris" }
    last_name { "Chu" }
    userable_type { "Admin" }
    phone_number { "1234567890" }
  end
end
