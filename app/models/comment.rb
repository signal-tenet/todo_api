# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :todo
  validates_presence_of :body
end
