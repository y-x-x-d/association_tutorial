class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :favorites
  # UserはたくさんのTweetを持っているため、関連付けをした(複数形)

  has_many :favorite_tweets, through: :favorites, source: :tweet
  #多対多え関連付けを行うときは、throughオプションを付けると、中間テーブルを経由して関連先のモデルを取得できるようになる。
  #source は参照元のモデルをさすオプション
  # 上のhas_many :tweetsと重複するために、has_many :favorite_tweetsと名称を変更している。
end
