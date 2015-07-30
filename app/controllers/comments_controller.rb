class CommentsController < ApplicationController

  def index
      @comments = Comment.all
    end

    def new
      @comments = Comment.all
    end

    def create
      @comments = Comment.create!(comment_params)
      redirect_to comment_path(@comment)
    end

    #show
    def show
      @comments = Comment.find(params[:id])
    end

    # edit
    def edit
      @comments = Comment.find(params[:id])
    end

    # update
    def update
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      redirect_to comment_path(@comment)
    end

    # destroy
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to comment_path
    end


private
  def create_params
    params.require(:post).permit(:created_by, :comment_edit, :comment_at))
  end

end
