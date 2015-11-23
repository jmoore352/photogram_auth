class Photo < ActiveRecord::Base

  validates :user, :presence => true  # to do user instead of user_id, need to have validates and belongs to

  belongs_to :user
  has_many :comments #:dependent => destroy   #destroys comments associated with photos
  has_many :likes
  has_many :fans, :through => :likes, :source => :user

end
