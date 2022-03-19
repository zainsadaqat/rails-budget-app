Rails.application.routes.draw do
  root "splash_screen#index"
  devise_for :users
  resources :categories do
    resources :entities
  end

end
