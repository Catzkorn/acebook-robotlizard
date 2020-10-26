class PostsController < ApplicationController
  respond_to :js, :html, :json

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_url
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @post = Post.new
    @posts = Post.all
    @comment = Comment.new(post_id: params[:post_id])
  end

  def like
    @post = Post.find(params[:id])
    if params[:format] == "like"
      @post.liked_by current_user
    elsif params[:format] == "unlike"
      @post.unliked_by current_user
    end
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id).merge(user_id: current_user.id)
  end
end
