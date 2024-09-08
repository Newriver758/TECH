Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:new, :create, :index, :show] do
  resources :answers, only: [:new, :create]
  end

  root to: 'questions#index'
end