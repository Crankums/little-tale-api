class ApplicationController < ActionController::API
    include ::ActionController::Cookies
 
  def current_user
    User.first
    # User.find_by(id: session[:user_id])
    # ^^ will implement later
  end

  def logged_in?
    !!current_user
  end
end
