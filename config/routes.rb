Rails.application.routes.draw do
  root 'persons#index'

  resources :persons
  # get '/people', to: 'persons#index', as: 'people'
end
