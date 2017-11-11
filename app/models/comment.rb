class Comment < ApplicationRecord
  belongs_to :review
  
  validates :body, presence: true
end
