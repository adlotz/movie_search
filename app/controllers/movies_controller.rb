class MoviesController < ApplicationController
  def index
  end

  def search
  	if @movies = SearchMovie.new(movie_params[:movie_name]).perform
  		flash[:success] = 'recherche effectué'
		redirect_to "/movies/search"

  	else
  		flash[:danger] = "Erreur, la recherche n'a pas fonctionné!"
  		redirect_to root_path
  	
  	end
  end

  	def movie_params
      params.permit(:movie_name)
  	end


end
