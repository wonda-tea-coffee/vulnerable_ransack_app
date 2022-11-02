class UsersController < ApplicationController
  def index
    @users = User.select(:id).ransack(params[:q]).result
    render json: @users
  end
end
