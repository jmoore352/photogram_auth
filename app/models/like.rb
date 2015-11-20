class Like < ActiveRecord::Base

  validates :username, :presence => true, :uniqueness => { :scope => :image }
  validates :photo_id, :presence => true

belongs_to :user
belongs_to :photo

end
