class FriendshipsController < ApplicationController
  def addfriend
    @user = User.find(params[:id])
    current_user.friend_request(@user)
    redirect_back fallback_location: root_path
  end

  def unfriend
    @user = User.find(params[:id])
    current_user.remove_friend(@user)
    redirect_back fallback_location: root_path
  end
end
