Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:new, :create, :index, :show] do
    resources :answers, only: [:new, :create]
    resources :posts
    resources :prototypes, only: [:index, :show]
  end

  root to: 'questions#index'
end