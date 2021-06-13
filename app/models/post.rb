class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { in: 5..15 }, presence: true
  validates :body, length: { maximum: 500 }, presence: true
end