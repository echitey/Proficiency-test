FactoryGirl.define do
  factory :course do
    name {FFaker::Name.name}
    description {FFaker::Lorem.sentence}
    status {0}
  end
end
