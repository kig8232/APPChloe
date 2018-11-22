class UsersController < ApplicationController

  def index
  	@users = User.all
  end


  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.
  		redirect_to user_url(@user)
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