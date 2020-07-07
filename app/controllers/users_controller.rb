class UsersController < ApplicationController
    before_action :find_user, only: [:show]
    def index
      userss = User.all
      render json: userss.to_json
  end

      def show
        render json: @user.to_json
      end

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: @user, jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

      def update
        @user.update(user_params)
          render json: user
        
      end

      def destroy
        user.destroy
      end    

      def find_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:username,:password,:password_confirmation)
      end
end
