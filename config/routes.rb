Rails.application.routes.draw do
  resources :links
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "home#index"
end
