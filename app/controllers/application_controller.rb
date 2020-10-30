class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # define current_user and logged_in? as helper methods
  helper_method :current_user, :logged_in?

  def current_user
    # Fing the user that matches the user_id stored in session.
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    # check if the current_user has a value. nil? returns a boolean
    !current_user.nil?
  end
end
