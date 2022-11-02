class ApplicationController < ActionController::API
  def index
    @users = User.select(:id).ransack(params[:q]).result
    render json: @users
  end
end
