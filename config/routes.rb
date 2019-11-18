Rails.application.routes.draw do
  resources :comments
  resources :links
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "links#index"
end
