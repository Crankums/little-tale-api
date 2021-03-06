class Api::V1::SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:session][:username])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            render json: UserSerializer.new(user), status: 202
        else
            render json: {
                error: "Invalid Name or Password"
            }
        end
    end

    def get_current_user
        if logged_in?
            render json: UserSerializer.new(current_user)
        else
            render json: {
                error: "Please log in to continue"
            }
        end
    end

    def delete
        session.clear
        render json: {
            notice: "you have successfully logged out"
        }
    end
end
