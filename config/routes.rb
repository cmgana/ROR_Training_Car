Rails.application.routes.draw do
get 'my_cars/index'
root 'my_cars#index'
resources :my_cars
resources :rentals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
