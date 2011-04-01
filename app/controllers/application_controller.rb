class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :logged_in?

  private
  def logged_in?
    session[:logged_in] == true
  end
end
