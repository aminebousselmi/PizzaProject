Rails.application.routes.draw do
  post 'order/create', to: 'order#create'
  resources :pizzas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
