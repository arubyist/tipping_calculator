Rails.application.routes.draw do
  
  #root :to => 'tippies#index'
  root :to => 'tippies#new'

  resources :tippies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
