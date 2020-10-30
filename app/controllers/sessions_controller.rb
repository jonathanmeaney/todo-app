class SessionsController < ApplicationController
  def new
  end

  def create
    # find the user record that matches the email.
    @user = User.find_by(email: params[:email])

    # if the user record exists and the password matches.
    # Use the authenticate method provided with has_secure_password.
    if @user && @user.authenticate(params[:password])
      # add the user_id to the session
      session[:user_id] = @user.id
      # redirect to the welcome page.
      redirect_to '/welcome'
    else
      # if the email and password do not match redirect to the login page.
      redirect_to '/login'
    end
  end

  def welcome
  end

  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
