class MoviesController < ApplicationController

  def lists

    @list_of_movies = Movie.all
    render({ :template => "movie_template/lists.html.erb"})
  end

  
  def movie_details
    @movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({ :id => @movie_id }).at(0)

    render({ :template => "movie_template/movie.html.erb"})
  end

end
