class PostsController < ApplicationController

  def index
      @posts = Post.all
    end

    def new
      @posts = Post.all
    end

    def create
      @posts = Post.create!(post_params)
      redirect_to post_path(@post)
    end

    #show
    def show
      @posts = Post.find(params[:id])
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
      redirect_to post_path
    end

private
  def post_params
    params.require(:post).permit(:created_by, :post_title, :post_content, :post_edit, :created_at, :edited_at))
  end

end
