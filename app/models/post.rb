class Post < ActiveRecord::Base
  belongs_to :blog_views 
  has_one :blog_view 
  attr_accessible :desc, :title
end
