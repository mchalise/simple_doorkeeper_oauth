module Api::V1
  class UsersController < ApiController
    before_action :doorkeeper_authorize!

    # before_action only: [:create, :update, :destroy] do
    #   doorkeeper_authorize! :write
    # end

    def index
      render :json => User.all
    end

    def create
      respond_with "api_v1", User.create!(params[:user])
    end
  end
end
