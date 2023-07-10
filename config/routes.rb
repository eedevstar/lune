Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'

  get 'dashboard/index', as: :dashboard_index
  
  resources :movies do
    resources :reviews, only: [:index]
  end
end
