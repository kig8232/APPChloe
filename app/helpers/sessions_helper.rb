module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  def logged_in?
  if session[:user_id] 
    @current_user = current_user.find_by(id: session[:user_id])
  end
  def current_uesr
  	if session[:user_id]
  		@current_user = User.find_by(id: session[:user_id])
  	end
  end
end
