class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    # byebug
    # binding.pry
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path, info: "You have successfully logged in"
    else
      redirect_to login_path, danger: "Invalid email and password combination"
    end

  end

  def destroy
    log_out
    redirect_to login_path, success: "You have successfully logged out"
  end
end
