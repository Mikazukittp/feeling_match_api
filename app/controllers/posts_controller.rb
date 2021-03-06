class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find_by(params[:id])
    render json: @post
  end
end
