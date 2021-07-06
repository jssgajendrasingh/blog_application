class Admin::UsersController < ApplicationController
	def index 
		#byebug
		name = params[:q]
		puts name.nil?
		if name.nil? == true
			@user = User.all
		else
			@user = User.where('lower(firstname) = ?', name.downcase)
		end		
	end	
	def new

	end  
	def create
		#byebug
		@user = User.create(user_params)
		redirect_to admin_users_path, notice: "User created successfully"
	end	
	  
	def edit
	 @user = User.find(params[:id])
	end	

	def update
	 #byebug
     @user = User.find(params[:id])
     @user.update(user_params)
     #flash[:notice] = "Your Record is successfully updated"
     redirect_to admin_users_path, notice:  "Your Record is successfully updated"
	end	
	
	def search_form
		
	end	
	def find_user_by_name
		user = params.require(:user).permit(:firstname)
		redirect_to action: 'index',name: user
		# puts "User = #{user}"
		# @user = User.find_by(firstname: user[:firstname])
		# puts "User = #{@user}"
	end	
	private
	
	def user_params
		user = params[:user]
		pass = user[:password]
		if pass == ""
			params.require(:user).permit(:firstname, :lastname, :email, :about)
		else 
			params.require(:user).permit(:firstname,:lastname,:email,:about,:password)
		end	
	end

	
		
end
