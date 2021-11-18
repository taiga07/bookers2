class UsersController < ApplicationController

  def show
    @user=User.find(params[:id])
    @user=current_user
  end
  
  def index
    @users=User.all
    @user=current_user
  end
  
  
  def edit
    @user=User.find(params[:id])
    @user=current_user
  end



 private
 def user_paarams
   params.require(:user).permit(:profile_image)
 end



end