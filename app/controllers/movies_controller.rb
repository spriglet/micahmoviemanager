class MoviesController < ApplicationController
  # home page
  def home
    
  end
  # Adds a new movie to the collection
  def new
   
  end
  def create
    @movie = Article.new(movie_params)
    @movie.save
    redirect_to @movie
  end
  private
  def movie_params
    params.require(:movie).permit(:title,:format,:length,:release_year)
  end
end
