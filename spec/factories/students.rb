FactoryGirl.define do
  factory :student do
    name {FFaker::Name.name}
    register_number {FFaker::PhoneNumber.short_phone_number}
    status {0}
  end
end
