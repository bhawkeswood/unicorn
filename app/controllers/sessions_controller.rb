class SessionsController < ApplicationController
  def new
  end

  def create 
    user = login(params[:username], params[:password])
      if user
        redirect_back_or_to teams_path, :notice => "Welcome, #{user.username}!"
      else
        flash.now.alert = "Your username or password was incorrect."
        render :new
      end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
