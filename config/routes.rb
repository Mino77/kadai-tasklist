Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #root to: 'tasks#index'
 
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :tasks, only: [:create, :destroy, :edit, :update]
end
