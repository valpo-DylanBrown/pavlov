Rails.application.routes.draw do
  devise_for :users
  resources :patients


  root "pages#show", page: "home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
