Rails.application.routes.draw do
  namespace :api do
    resources :movies, only: :index
  end
  get '/api/movies', controller: :movies, action: :index
end
