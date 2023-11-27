Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  devise_for :users
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'
  # root controller: :rooms, action: :index
end
