class PostsController < ApplicationController
  before_filter :authenticate_user!

  def create
    post = Post.new(params[:post])
    if post.save
        redirect_to post
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
      
  end

end