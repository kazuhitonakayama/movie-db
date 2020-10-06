class MoviesController < ApplicationController
  require 'themoviedb-api'
  Tmdb::Api.key("64721be267690b71440c6694a651abc1")

  
  def search
    @search_term = params[:looking_for]
    @movie_results = Movie.search(@search_term)
  end
  
  def show
    @movie_info = Movie.details(params[:id])
  end
end
