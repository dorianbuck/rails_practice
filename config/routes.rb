Rails.application.routes.draw do
  namespace :api do
    resources :movies, only: %i[index create show]
  end
end
