Rails.application.routes.draw do
  resources :rides
  resources :available_rides, only: [:index, :create]
  devise_for :drivers
  devise_for :customers
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#home"
end
