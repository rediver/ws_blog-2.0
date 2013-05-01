class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private 
  
  def after_sign_out_path_for(admin) 
    root_path
  end  
  
end
