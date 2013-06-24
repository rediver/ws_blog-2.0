class BlogViewsController < ApplicationController

  def index
      @posts = Post.order('created_at DESC').page(params[:page]).per(4)          
      respond_to do |format|
        format.html
        format.rss
        format.json { render json: @posts }               
      end  
  end 

  def show 
    @post = Post.find(params[:id])      
  end
  
end