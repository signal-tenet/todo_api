class Comment < ApplicationRecord
  belongs_to :todo
  validates_presence_of :body
end
