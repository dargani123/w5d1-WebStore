class ProductsController < ApplicationController
  before_filter :user_not_logged_in, only: [:add_to_cart]

  def index
    @products = Product.all
  end

  def add_to_cart
    session[:cart] ||= Hash.new(0)
    params[:product].each do |id, quantity|
      session[:cart][id] += quantity.to_i
    end
    flash[:success] = "Added: #{Product.display_items(params[:product])}"
    redirect_to user_url(current_user)
  end

  private

  def user_not_logged_in
    unless @current_user
      flash[:error] = "Please login before adding products"
      redirect_to signin_url
    end
  end
end


## GOAL: { 1 => 5 , }