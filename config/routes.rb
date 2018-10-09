Rails.application.routes.draw do
#<<<<<<< Updated upstream
#=======
  devise_for :users
  devise_for :installs
  devise_for :humen
#>>>>>>> Stashed changes
  resources :recipes
  root 'recipes#index'
  get 'pages/about'

end
