Rails.application.routes.draw do
  resources :useres, only: [:index, :create]
end
