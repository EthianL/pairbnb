class UsersController < ApplicationController
   
   before_action :require_login, only: [:show]
   
   def show
   end

   def new
      @user = User.new
   end
  
  
   def create
      @user = User.new(user_params)
      
      if @user.save
         redirect_to users_path
      else
         
         render 'new'
      end
   end
     
   def edit
   end
   
   def update
      if @user.update(user_params)
         flash[:success] = "Successfully updated the user"
         redirect_to @user
      else
         flash[:danger] = "Error updating user"
         render :edit
      end
   end
   
   def find_user
    @user = User.find(params[:id])
   end


   private
   def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
   end
    
     
end


