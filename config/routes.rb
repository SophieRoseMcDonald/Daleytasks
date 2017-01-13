Rails.application.routes.draw do
  devise_for :users
  resources :daleytasks
  root to: redirect('/daleytasks')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todolists
  resources :calendars
end
