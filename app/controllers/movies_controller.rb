class MoviesController < ApplicationController
  require 'themoviedb-api'
  Tmdb::Api.key("64721be267690b71440c6694a651abc1")


  def search
    @movies = Tmdb::Search.movie("Harry")
  end
  
  def show
  end
end
