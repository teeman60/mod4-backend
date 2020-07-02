class UsersController < ApplicationController
    before_action :current_user, only: [:show, :update, :destroy]
    def index
        users = User.all
        render json: users.to_json

      def show
        render json: user.to_json
      end

    def create
        user = User.new(user_params)
        # byebug
        if user.save
          render json: user, status: :created, location: @user
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def update
        if @user.update(user_params)
          render json: user
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        user.destroy
      end    

      def current_user
        @ser = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:username,:password,:password_confirmation)
      end
end