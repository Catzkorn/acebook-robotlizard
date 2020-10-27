class UsersController < ApplicationController
  
  def new
    @user = User.new
    @profile = Profile.create
  end

  def create
    @user = User.create(user_params)
    UserMailer.with(user: @user).welcome_email.deliver_now
    format.html { redirect_to(@user, notice: 'User was created.') }
    format.json { render json: @user, status: :created, location: @user }
    

    #redirect_to user_url
  end
  

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @comment = Comment.new(post_id: params[:post_id])
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
