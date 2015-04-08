class MoviesController < ApplicationController
  # home page
  def home
    
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def index
    
 
    #sort code 
    case params[:sortby]
      when "title"
        @movies = Movie.order("title")
      when "release_yaer"
        puts 'Try harder!'
      when "length"
        puts 'You need help!!!'
      when "rating"
        puts 'You need help!!!'
      when "fomrat"
        puts 'You need help!!!'
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
