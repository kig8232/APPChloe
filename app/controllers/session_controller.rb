class SessionsController < ApplicationController

  def new
  end

  def create
  	user= User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		
  	else
  		flash[:danger]= 'Invalid email/password combination'
  		render 'new'  # renders the new.html.erb view for Sessions
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end

end