Rails.application.routes.draw do
  get 'pie_toppings/index'

  root 'pie_toppings#index'

  get 'pie_toppings/create'

  get 'pie_toppings/pie_params'

  get 'pies/index'

  get 'pies/create'

  get 'pies/pie_params'

  get 'toppings/topping_params'

  get 'toppings/index'

  get 'toppings/create'

  get 'toppings/pie_params'

  get 'pie/index'

  get 'pie/create'

  get 'pie/pie_params'

  get 'pie_controller/index'

  get 'pie_controller/show'

  get 'pie_controller/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
