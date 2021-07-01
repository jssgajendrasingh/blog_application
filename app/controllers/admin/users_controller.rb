class Admin::UsersController < ApplicationController
	def index 
		@user = User.all
	end	
	def edit
	 @user = User.find(params[:id])
	end	
	def update
   @user = User.find(params[:id])
   @user.update(user_params)
   flash[:notice] = "Your Record is successfully updated"
   redirect_to admin_users_path
	end	
	
	private
	
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :about, :password)
	end
end
