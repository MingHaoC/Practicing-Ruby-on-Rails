class RegistrationsController < ApplicationController

  def create
    @user = User.new(user)
    if @user.save
      render json: @user, status: 200
    else
      render json: {error: "user errors"}
    end
  end

  private

  def user
    params.permit(:email, :username, :password)
  end


end
