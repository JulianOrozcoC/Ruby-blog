Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for the index
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts
end
