Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  resources :stores do
    member do
      delete :delete_file
    end
  end
  get 'admin/login'
  devise_for :users
  get 'home/index'
  root 'home#index'
  get '/admin/logout'
  get '/admin/login'
  post '/admin/login'
  get '/gallery/index'
  get '/gallery/checkout'
  post '/gallery/checkout'
  get '/gallery/purchase_complete'
  get '/gallery/search'
  post '/gallery/search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
