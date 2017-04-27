class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.password_hash == params[:password]
      session[:user_id] = @user.id
      current_user
      redirect_to @user
    else
      redirect_to log_in_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
