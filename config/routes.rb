Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  get "/contacts" => 'contacts#new', as: :contact
  
  resources :contacts, only: [:new, :create]
  devise_for :accounts
  resources :properties
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
