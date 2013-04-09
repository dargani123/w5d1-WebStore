class UsersController < ApplicationController
  def show
    @user = current_user
    if @user && @user.id == params[:id].to_i
      @session = session[:cart] ? session[:cart] : {}
      render 'show'
    else
      flash[:error] = "Please first sign in"
      redirect_to signin_url
    end
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      @user.update_attributes(params[:user])
      redirect_to user_url @user
    else
      #flash[:]
    end
  end
end
