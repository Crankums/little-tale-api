class Api::V1::CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :destroy]
    
    def index
        comments = Comment.all
        render json: comments, status: 200
    end

    def show
        render json: comment, status: 200
    end

    def create
        comment = Comment.new(comment_params)

        if comment.save
            render json: comment, status: 200
        else
            render json: comment.errors, status: 422
        end
    end

    def update
        if comment.update(comment_params)
           render json: comment, status: 201
        else
           render json: comment.errors, status: 422
        end
    end

    def destroy
        comment.destroy
    end

    private

    def set_comment
        comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:text, :story_part, :user_id, :post_id)
    end
    
end
