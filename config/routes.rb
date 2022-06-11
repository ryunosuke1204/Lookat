Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show do
    get :favorites, on: :collection
 end
end
