Rails.application.routes.draw do
  resources :deploys, only: [:create, :index]
end
