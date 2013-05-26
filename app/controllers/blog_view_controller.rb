class BlogViewController < ApplicationController

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
    respond_to do |format|
        format.html
        format.json { render json: @post }
    end
  end
  
end