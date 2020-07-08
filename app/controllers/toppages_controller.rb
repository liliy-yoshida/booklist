class ToppagesController < ApplicationController
  
  def index
    redirect_to toppages_home_url if logged_in? # ログインしてたらリダイレクト
  end
  
  def home
   redirect_to root_url if !logged_in? # ログインしてなかったらリダイレクト
   @book = current_user.books.build
   @books = current_user.books.order(id: :desc).page(params[:page])
  end
  
end
