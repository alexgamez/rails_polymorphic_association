Rails.application.routes.draw do
  root to: "static_pages#home"
  resources :books
  resources :magazines
  resources :notes, only: [:index]
end
