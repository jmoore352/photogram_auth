class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :comments
  has_many :likes
  has_many :photos
  has_many :liked_photos, :through => :likes, :source => :photo

#source is the name for the method you call on likes     so calling photo on likes
end
