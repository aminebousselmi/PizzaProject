Rails.application.routes.draw do
  post 'order/create', to: 'order#create'
  get 'order/show', to: 'order#view'
   get 'order/view', to: 'order#index'
  resources :pizzas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end