class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(tweet_id: params[:tweet_id])
    favorite.save
    redirect_to tweet_path
    #こう記述することで、current_userに関連したfavoriteクラスの新しいインスタンスが生成可能
    #favorite.user_id = current_user.idが済んだ状態で生成される
    #buildはnewと同じ意味。
  end

  def destroy
    favorite = Favorite.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    favorite.destroy
    redirect_to tweets_path
  end
end
