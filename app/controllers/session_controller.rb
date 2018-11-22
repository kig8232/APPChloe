class SessionsController < ApplicationController

  def new
  end

  def create
  	user= User.find_by(email: params[:session][:email].downcase)
  	if user and user.authenticate(params[:session][:password])
  		
  	else
  		render 'new'  # renders the new.html.erb view for Sessions
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end

end