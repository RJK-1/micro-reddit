class User < ApplicationRecord
  has_many :posts
  validates :username, length: { in: 3..15 }, presence: true, uniqueness: true
  validates :password, length: { in: 5..20 }, presence: true
  validates :email, presence: true, uniqueness: true
end
