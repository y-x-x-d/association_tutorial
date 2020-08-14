class Tweet < ApplicationRecord
  belongs_to :user
  has_many :favorites

 #ユーザーがツイートをファボ（いいね）したかどうかを判定
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
