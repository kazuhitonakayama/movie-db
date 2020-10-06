class MoviesController < ApplicationController
  require 'themoviedb-api'
  Tmdb::Api.key("64721be267690b71440c6694a651abc1")
  Tmdb::Api.language("ja")



  def search
  end
  
  def show
  end
end
