class PostsController < ApplicationController

  def index
      @posts = Post.all
    end

    def new
      @post = Post.new
      # @post = Post.new(params[:post])
    end

    def create
      @post = Post.create!(post_params)
      redirect_to post_path(@post)
    end

    #show
    def show
      # binding.pry
      @post = Post.find(params[:id])
    end

    # edit
    def edit
      @posts = Post.find(params[:id])
    end

    # update
    def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      redirect_to post_path(@post)
    end

    # destroy
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
    end

private
  def post_params
    params.require(:post).permit(:author, :title, :content)
  end

end
