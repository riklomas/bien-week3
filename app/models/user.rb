class User < ApplicationRecord
  
  has_many :reviews
  has_many :comments
  has_many :bookmarks
  
  has_secure_password
  
  mount_uploader :avatar, AvatarUploader
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  
  def to_param
    username
  end
  
end
