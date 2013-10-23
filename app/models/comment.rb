class Comment < ActiveRecord::Base
  attr_accessible :content, :username, :image,:remote_image_url
  belongs_to :board
  default_scope order('created_at DESC')
  validates :content, length: {in: 1..140}
  validates :username, length: {in:1..8}
  mount_uploader :image,ImageUploader
end
