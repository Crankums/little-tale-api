class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]


    def index
        users = User.all
        render json: users, status: 200
    end

    def show
        # byebug 
        user = User.find(params[:id]) 

        user_json = UserSerializer.new(user).serialized_json
        render json: user_json, status: 200
    end

    def create
        user = User.new(user_params)

        if user.save
            session[:user_id] = user.id
            render json: UserSerializer.new(user), status: 201
        else
            response = {
                error: user.errors.full_messages
            }
        
            render json: response, status: 422

        end
    end

    def update
        user = User.find(params[:id]) 

        if user.update(user_params)
            render json: user, status: 204
        else
            render json: user.errors, status: 422
        end
    end

    def destroy
        user = User.find(params[:id]) 

        user.destroy
    end

    private

    def set_user
        user = User.find_by(id: 1) 
    end

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
