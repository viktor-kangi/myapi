Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  resources :menus, only: [:index, :show, :create, :update, :destroy] do
    # nested resource for menu_items
    resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  end
  resources :order_items
  resources :orders
  
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/users/create"
end
