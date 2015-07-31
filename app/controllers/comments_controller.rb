class CommentsController < ApplicationController

    def index
      @comments = Comment.all
    end

    def new
      @post = Post.find(params[:post_id])
      @comment = Comment.new
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = Comment.create!(whitelisted_comment_params)
      redirect_to post_path(@post)
    end
    #show
    def show
      # binding.pry
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
            # redirect_to post_path(@post)
    end

    # edit
    def edit
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
    end

    # update
    def update
      @comment = Comment.find(params[:id])
      @comment.update(whitelisted_comment_params)
      redirect_to comment_path(@comment)
    end

    # destroy
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to comment_path
    end

  private
    def whitelisted_comment_params
      params.require(:comment).permit(:author,:content)
    end
end
