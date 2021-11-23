Rails.application.routes.draw do
  namespace :api do
    resources :movies, only: %i[index create]
  end
  # get '/api/movies', controller: :movies, action: :index
end
