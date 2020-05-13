Rails.application.routes.draw do
    root 'welcome#home'
  get 'about', to: 'welcome#about'
  resources :hospitals
  resources :studies
  resources :tours
  resources :lists
  resources :homepage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :articles
  resources :messages, only: [:new, :create]

  get 'signup', to: "users#new"
  resources :users, except: [:new]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  resources :categories, except: [:destroy]
end
