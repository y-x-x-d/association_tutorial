class TweetsController < ApplicationController
  before_action :authenticate_user!, expect: [:index]
  #deviseメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド
  def new
    @tweet = Tweet.new
  end

 #保存
  def create
    @tweet = Tweet.new(tweet_params) #フォームから送られてきたデータ(body)をストロングパラメータを経由して@tweetに代入
    @tweet.user_id = current_user.id #user_idの情報はフォームから送られてないので、deviseのメソッドであるcurrent_userを@tweet.user_idに代入している
    @tweet.save
    redirect_to tweets_path
  end

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
    @user = @tweet.user
  end

  private
   def tweet_params
     params.require(:tweet).permit(:body)
   end

end
