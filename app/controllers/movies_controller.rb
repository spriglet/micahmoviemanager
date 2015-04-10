class MoviesController < ApplicationController
  # home page
  helper_method :sort_column , :sort_direction
  def home
    
  end
  # Delete movies
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
 
    redirect_to :back
  end
  # Show Movies
  def show
    @movie = Movie.find(params[:id])
  end
  # Get movie list
  def index
    @movies = Movie.order(sort_column + " " + sort_direction)
  end
  #edit new movie view 
  def edit
    @movie = Movie.find(params[:id])
    
  end
  # Add a new movie view
  def new
    @movie = Movie.new
  end
  # update a movie
  def update
    @movie = Movie.find(params[:id])    
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end
  # create a new movie
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
 
  # params for movie fields. 
  def movie_params
    params.require(:movie).permit(:title,:format,:length,:release_year,:rating)
  end
  #sort by specific movie field 
  def sort_column
    Movie.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end
    #sort by asc desc
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
