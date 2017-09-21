Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :beers
  resources :countries
  resources :styles
  resources :breweries

  resources :users, only: [:new, :create, :show]
	resource :session, only: [:new, :create, :destroy]

end
