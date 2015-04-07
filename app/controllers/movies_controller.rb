class MoviesController < ApplicationController
  # home page
  def home
    
  end
  # Adds a new movie to the collection
  def new
   
  end
  def create
    @article = Article.new(params.require(:movie).permit(:title,:format,:length, :release_year))

    @movie.save
    redirect_to @movie
  end
end
