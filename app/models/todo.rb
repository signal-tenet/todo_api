class Todo < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates_presence_of :name, :created_by, :completion_status
end
