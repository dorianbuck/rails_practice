class Api::MoviesController < ApplicationController
  def index
    movies = Movie.all
    if movies.any?
      render json: { movies: movies }
    else
      render json: { error: 'No movies found' }, status: 404
    end
  end

  def create
    movie = Movie.new(movie_params)
    movie.save
    if movie.persisted?
      render json: { message: 'Movie created successfully' }, status: 201
    else
      render json: { error: movie.errors.full_messages.join(', ') }, status: 422
    end
  end

  def show
    movie = Movie.find_by(id: params[:id])
    if movie
      render json: { movie: movie }
    else
      render json: { error: 'Movie not found' }, status: 404
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :year, :description, :image)
  end
end
