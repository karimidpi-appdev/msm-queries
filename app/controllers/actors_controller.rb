class ActorsController < ApplicationController

  def all_actors
    
    @list_of_actors = Actor.all
    render({ :template => "actor_template/all_actors.html.erb"})
  end


  def an_actor
    
    @actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => @actor_id }).at(0)
    @actor_filmography = Character.where({ :actor_id => @the_actor.id })
    render({ :template => "actor_template/an_actors.html.erb"})
  end
end
