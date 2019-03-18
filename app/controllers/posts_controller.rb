class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    set_post
  end

  def new
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = @post = Post.find(params[:id])
  end
end
