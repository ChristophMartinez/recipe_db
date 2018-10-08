Rails.application.routes.draw do
  devise_for :humen
  resources :recipes
  root 'recipes#index'
  get 'pages/about'

end
