FactoryBot.define do
  factory :cat do
    sequence(:name) { |n| "Cat #{n}" }
  end
end
