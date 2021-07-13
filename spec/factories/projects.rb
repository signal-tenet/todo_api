# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    title { Faker::Lorem.word }
    created_by { Faker::Name.initials(number: 2) }
  end
end