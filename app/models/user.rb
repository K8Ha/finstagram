class User < ActiveRecord::Base 
  
  validates :email, :username, uniqueness: true
  validates :email, :avatar_url, :username, presence: true

  has_secure_password

  has_many :finstagram_posts
  has_many :comments
  has_many :likes
  
end