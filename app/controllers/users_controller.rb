class UsersController < ApplicationController
    before_action :doorkeeper_authorize!

    # before_action only: [:create, :update, :destroy] do
    #   doorkeeper_authorize! :write
    # end

    def index
      render :json => User.all
    end
end
