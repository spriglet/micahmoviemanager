class MoviesController < ApplicationController
  # home page
  def home
    
  end
  def index
    @movies = Movie.all
  end
  # Adds a new movie to the collection
  def new
   
  end
  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to "/movies"
  end
  private
  def movie_params
    params.require(:movie).permit(:title,:format,:length,:release_year,:rating)
  end
end
