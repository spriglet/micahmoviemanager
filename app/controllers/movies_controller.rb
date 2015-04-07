class MoviesController < ApplicationController
  # home page
  def home
    
  end
  # Adds a new movie to the collection
  def new
   
  end
  def create
    render plain: params[:Movies].inspect
  end
end
