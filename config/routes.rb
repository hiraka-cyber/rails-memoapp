Rails.application.routes.draw do
  root to: 'memo#index'
  resources :memo, only: [:new,:create,:edit,:update,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
