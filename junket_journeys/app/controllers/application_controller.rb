class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?
 
   def index
   end
 
 private
     
   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
 
   def logged_in?
    !!current_user
   end
  

end
