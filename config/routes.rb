Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # devise_for :users
  # resource(s) pour plusieurs ressources
  root to: 'posts#index'


  resources :users do
    resources :posts
  end

  resources :posts do
  end

end
