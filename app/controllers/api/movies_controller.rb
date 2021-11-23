class Api::MoviesController < ApplicationController
  def index
    movies = Movie.all
    if movies.any?
      render json: { movies: movies }
    else
      render json: { error: 'No movies found' }, status: 404
    end
  end
  
end
