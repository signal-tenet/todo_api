# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    body { Faker::Lorem.word }
    todo_id nil
  end
end
