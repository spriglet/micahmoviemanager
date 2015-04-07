class MoviesController < ApplicationController
  # home page
  def home
    
  end
  # Adds a new movie to the collection
  def new
   
  end
  def create
    @article = Movie.new(params[:article])

    @movie.save
    redirect_to @movie
  end
end
