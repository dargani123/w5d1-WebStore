class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.password == params[:session][:password]
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    cookies[:signed_in_user_id] = ""
    session[:cart] = {}
    current_user = nil
    redirect_to products_url
  end
end
