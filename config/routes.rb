Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
    #get 'sign_out', to: 'devise/sessions#destroy'
  end
  resources :messages
  root to: "messages#index"

  namespace :admin do
    root to: "messages#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
