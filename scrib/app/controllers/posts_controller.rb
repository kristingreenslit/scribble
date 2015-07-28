









private
def post_params
  params.require(:post).permit(:name, :photo_url, :nationality)
end
