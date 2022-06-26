class Post < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { in: 5..140 }
	has_many :comments, dependent: :destroy
end
