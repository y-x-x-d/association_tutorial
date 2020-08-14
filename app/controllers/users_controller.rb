class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
    #ユーザーがファボしたツイートを取得できるようになる
    @favorite_tweets = @user.favorite_tweets
  end
end
