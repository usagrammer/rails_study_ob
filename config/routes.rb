Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show
  resources :profiles, only: [:show, :new, :create, :edit, :update, :destroy]
end
