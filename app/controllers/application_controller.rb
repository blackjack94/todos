class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def must_signed_in
  	redirect_to signin_path unless signed_in?
  end

  def signed_in?
  	session[:current_email].present?
  end

  def sign_in_as email
  	session[:current_email] = email
  end

end
