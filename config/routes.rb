Rails.application.routes.draw do

  resources :pies

  resources :toppings

  get 'site/index'

  root 'site#index'

  get 'pie_toppings/index'

  get 'pie_toppings/create'

  get 'pie_toppings/pie_params'

  get 'pies/index'

  get 'pies/create'

  get 'pies/pie_params'

  get 'toppings/topping_params'

  get 'toppings/index'

  get 'toppings/create'

  get 'toppings/pie_params'

  get 'pie_controller/index'

  get 'pie_controller/show'

  get 'pie_controller/create'

  post '/pies/:id/toppings/new' => 'pies#add_topping', as: :add_topping
  delete 'pies/:id/toppings/:topping_id' => 'pies#remove_topping', as: :remove_topping

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
