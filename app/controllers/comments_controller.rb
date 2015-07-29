class CommentsController < ApplicationController

  def index
  end










private
def create_params
  params.require(:post).permit(:created_by, :comment_edit, :comment_at))
end
