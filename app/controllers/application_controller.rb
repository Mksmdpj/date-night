class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #call the method everytime the application controller loads/ but really every time a devise controller page loads
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # protect the database, while allowing these fieldds to be updated
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :pasword, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :pasword, :password_confirmation, :remember_me) }
  end
  
end
