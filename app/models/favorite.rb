class Favorite < ApplicationRecord
  #たくさん持たれる側（子供側）なのでbelongs_to
  belongs_to :user
  belongs_to :tweet
end
