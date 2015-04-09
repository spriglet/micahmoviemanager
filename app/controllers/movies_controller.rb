class MoviesController < ApplicationController
  # home page
  helper_method :sort_column , :sort_direction
  def home
    
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def index
    @movies = Movie.order(sort_column + " " + sort_direction)
  end
  
  def edit
    @movie = Movie.find(params[:id])
    
  end
  # Adds a new movie to the collection
  def new
    @movie = Movie.new
  end
  def update
    @movie = Movie.find(params[:id])    
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie 
    else
      render 'new'
    end
    @movie.save
  end
  private
  def movie_params
    params.require(:movie).permit(:title,:format,:length,:release_year,:rating)
  end
  def sort_column
    params[:sort] ||= "title"
  end
  def sort_direction
    params[:direction] ||= "asc"
  end
end
