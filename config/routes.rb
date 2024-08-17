Rails.application.routes.draw do
  resources :questions, only: [:new, :create, :index, :show]
  root to: 'questions#index'
  get 'questions/:id/show', to: 'questions#show', as: 'show_question'
end
