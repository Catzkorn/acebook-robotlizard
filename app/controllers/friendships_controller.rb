class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.create(friendship_params)
      end
    



      private 
      def friendship_params
        params.require(:friendship).permit(:user_id, :friend_id).merge(user_id: current_user.id)
      end
end