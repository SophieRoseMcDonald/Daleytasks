Rails.application.routes.draw do
  resources :daleytasks
  root to: redirect('/daleytasks')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
