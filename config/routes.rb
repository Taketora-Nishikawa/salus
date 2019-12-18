Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :boards do
    resources :favorites, only: %i[create destroy]
  end
  resources :comments, only: %i[create destroy]
  resources :users, only: %i[new create]
  
  get 'loginpage', to: 'users#loginpage'
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end