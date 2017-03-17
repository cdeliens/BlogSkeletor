Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :contacts

  get "/home", to: 'home#index'
  get "/posts", to: 'posts#index'
  devise_scope :user do
    get "logout", to: 'devise/sessions#destroy'
  end

end
