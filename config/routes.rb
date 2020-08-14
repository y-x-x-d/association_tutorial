Rails.application.routes.draw do

  # get 'favorit/create'
  # get 'favorit/destroy'
  root 'tweets#index'

  # get 'tweets/new'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/create'
  # get 'users/index'
  # get 'users/show'

  devise_for :users

  #ネスト（入れ子）にする do~end
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
