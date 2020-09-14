class TestingController < ApplicationController

  def test1
    render json: {message: (params[:username])}, status: 200
  end

  def test2
    render json: {message: "1+1"}, status: 200
  end

end
