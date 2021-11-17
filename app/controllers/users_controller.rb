class UsersController < ApplicationController

  def show
    @user=User.find(params[:id])
  end
  
  def index
  end
  def edit
    @user=User.find(params[:id])
  end



 private
 def user_paarams
   params.require(:user).permit(:profile_image)
 end



end