Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  match '/auth/:provider/callback', to: 'sessions#create', via: [:post,:get]
  get '/auth/github', as: 'github_login'
  get '/login', to: 'sessions#login', as: 'login'
  get '/logout', to: 'sessions#logout', as: 'logout'
end
