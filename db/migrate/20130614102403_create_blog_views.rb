class CreateBlogViews < ActiveRecord::Migration
  def change
    create_table :blog_views do |t|

      t.timestamps
    end
  end
end
