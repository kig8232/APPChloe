class UsersController < ApplicationController

  def index
  	if params[:status] == "activated"
  		@users = user.activated
  	else
  		@users = user.inactivated
  	end
  end


  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user
  	else
  		render 'new'
  	end	
  end

  def new
  end

  private
   def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end
end