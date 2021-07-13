# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    name { Faker::Lorem.word }
    completion_status { false }
  end
end
