class SearchMovie
	def initialize(movie_name)
		@movie = movie_name

	end

	def perform
		log_mdb
		find_movies(@movie)
	end

	def log_mdb
		Tmdb::Api.key(ENV['keydb'])
	end

	def find_movies(movie)
		Tmdb::Search.movie(movie).results.each do |movie|
			director = Tmdb::Movie.director(movie.id).each do |director|
				movie[:director] = director.name
			end
		end
	end
end