class Post < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :blog_views 
  has_one :blog_view 
  attr_accessible :desc, :title, :image, :remote_image_url
  mount_uploader :image, ImageUploader

end
