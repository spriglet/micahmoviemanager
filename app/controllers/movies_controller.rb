class MoviesController < ApplicationController
  # home page
  def home
    
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def index
    
 
    #sort code 
    
    if ['title', 'release_year', 'length','rating','format','title'].include?params[:sort_by]==true
       @movies = Movie.order(params[:sort_by])
    else 
      @movies = Movie.order("release_year");
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
