class PostsController < ApplicationController

  def index
      @posts = Post.all
      @posts = User.find(session[:user]["id"]).posts
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.create!(whitelisted_post_params)
      @user = User.find(session[:user]["id"])
      @post = @user.posts.create!(whitelisted_post_params)
      if @post.save
         flash[:notice] = "Your post has been created!"
         redirect_to @post # go to show page for @post
      else
         flash[:notice] = "Rats! Fix your mistakes."
         render :new
       end
    end

    #show
    def show
      # binding.pry
      @post = Post.find(params[:id])
      # @comment = Comment.new
      # @comments = Comment.find(params[:id])
      # @comments = Comment.all
      @comments = @post.comments.all
      @comment = @post.comments.new
      # redirect_to post_path(@comment)
    end

    # edit
    def edit
      @post = Post.find(params[:id])
    end

    # update
    def update
      @post = Post.find(params[:id])
      @post.update(whitelisted_post_params)
      redirect_to post_path(@post)
    end

    # destroy
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
    end

    private

    def whitelisted_post_params
      params.require(:post).permit(:author,:title,:content)
    end
end
