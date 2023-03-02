class ActorsController < ApplicationController

  def all_actors
    
    @list_of_actors = Actor.all
    render({ :template => "actor_template/all_actors.html.erb"})
  end
end
