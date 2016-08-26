Rails.application.routes.draw do
  get 'angular_test/index'

  get 'customer/index'

  devise_for :users
  get 'dashboard/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  resources :customers, only: [ :index ]

  # Testing Angular
  get "angular_test", to: "angular_test#index"
end
