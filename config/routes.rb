Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurants
  resources :menu_items
  resources :users
  resources :orders

  namespace :api do
    namespace :v1 do
      resources :menu_items
      resources :orders

      match "/orders" => "orders#create", via: [:options,:post]

    end
  end

end
