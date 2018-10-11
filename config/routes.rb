Rails.application.routes.draw do
  devise_for :users
  devise_for :recipes
  root 'recipes#index'
  get 'pages/about'

end
