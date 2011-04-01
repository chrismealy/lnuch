class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:password] == "eat"
      session[:logged_in] = true
      redirect_to root_url
    else
      render "new"
    end
  end

  def destroy
    session[:logged_in] = false
    redirect_to root_url
  end
end
