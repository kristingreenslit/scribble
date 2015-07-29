class PostsController < ApplicationController

  def index
  end




  def post_params
    params.require(:post).permit(:created_by, :post_title, :post_content, :post_edit, :created_at, :edited_at))
  end

  private
  
end
