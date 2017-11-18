class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  
  
  # before any page loads, find the current_user
  before_action :find_current_user
  
  # add in the method to use in the views
  helper_method :is_logged_in?
  
  # this finds the current user if logged in
  def find_current_user
    if is_logged_in?
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
  
  # check login status
  def check_login
    unless is_logged_in?
      redirect_to new_session_path
    end
  end
  
  # is the person logged in
  def is_logged_in?
    session[:user_id].present?
  end  
  
  # check admin login
  def check_admin
    @current_user = find_current_user
    
    unless @current_user.present? and @current_user.is_admin?
      redirect_to root_path
    end
  end
  
  # find admin user
  def find_admin_user
    @current_user = find_current_user
    
    if @current_user.present? and @current_user.is_admin?
      @current_user
    else
      nil
    end
  end
  
  
end






