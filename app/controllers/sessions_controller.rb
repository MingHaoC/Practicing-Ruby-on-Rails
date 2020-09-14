class SessionsController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: {error: 'invalid login'}, status: 401
    end
  end

  def logout
    if logged_in?
      session.clear
    end
    render json: {success: true}
  end

  private

  def validate_login_params
    unless params[:username].present? and params[:password].present?
      render json: {status: "Missing params"}, status: 400
    end
  end
end
