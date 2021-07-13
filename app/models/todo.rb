# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :project
  has_many :comments, dependent: :destroy
  validates_presence_of :name
end
