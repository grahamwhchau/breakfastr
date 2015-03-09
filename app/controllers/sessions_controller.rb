class SessionsController < ApplicationController
  def new
  end

  def create
  		username = params[:session][:username]
  		password = params[:session][:password]
  		@user = User.find_by(username: username) 
  		if @user.present? and @user.authenticate(password)
  			flash[:success] = "Logging in..."
  			#log them in
  			session[:user_id] = @user.id
  			redirect_to root_path
  		else
  			flash[:error] ="Please try again"
  			render :new
  		end
  end 

  def show
  end

  def destroy
  	reset_session
  	flash[:success] ="See you soon!"
  	redirect_to root_path
  end
end
