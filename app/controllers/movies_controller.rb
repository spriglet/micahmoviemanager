class MoviesController < ApplicationController
  # home page
  def home
    
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def index
    
 
    #sort code 
    case params[:sort_by]
      when "title"
        @movies = Movie.order("title")
      when "release_yaer"
        @movies = Movie.order("release_yaer")
      when "length"
        @movies = Movie.order("length")
      when "rating"
         @movies = Movie.order("rating")
      when "fomrat"
         @movies = Movie.order("format")
      else
        @movies = Movie.order("title")
    end
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
end
