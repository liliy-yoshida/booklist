class ToppagesController < ApplicationController

  def index
    if logged_in?
    redirect_to 'toppages/home'
    else
    render root_path
    end
  end
  
  def home
   if !logged_in? #ログインしていなければ
    redirect_to root_path
   else #ログインしてれば
    render 'toppages/home'
   end
   @book = current_user.build
   @books = current_user.books.order(id: :desc).page(params[:page])
  end
  
end

