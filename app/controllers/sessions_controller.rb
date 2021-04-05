class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user.present?
      session[:user_id] = user.id 
      flash[:notice] = "Logged in as #{user.username}"
      redirect_to root_path
    else
      flash[:notice] = 'Invalid Username'
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to sign_in_path, notice: 'Logged out'
  end
end
