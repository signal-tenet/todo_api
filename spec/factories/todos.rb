# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    name { Faker::Lorem.word }
    created_by { Faker::Name.initials(number: 2) }
    completion_status { false }
  end
end
