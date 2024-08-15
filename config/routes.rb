Rails.application.routes.draw do
  resources :questions, only: [:new, :create, :index, :show]
 get 'posts', to: 'posts#index'
 get 'posts/new', to: 'posts#new'
 post 'posts', to: 'posts#create'
end
