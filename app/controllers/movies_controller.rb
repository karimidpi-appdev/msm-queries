class MoviesController < ApplicationController
  def lists
    @list_of_movies = Movie.all
    render({ :template => "movie_template/lists.html.erb"})
  end

end
