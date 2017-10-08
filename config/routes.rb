Rails.application.routes.draw do
  resources :usages
  resources :supplies
  resources :appointments
  resources :surgeries
  resources :clinics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
