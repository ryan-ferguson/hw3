class PlacesController < ApplicationController

def index

@places = Place.all

# render :template => "places/index"

end

def show
  # find a place
  @place = Place.find_by({ "id" => params["id"] })
  # find posts for the place
  # @place = Post.where({ "place_id" => @place["id"] })
 
end

def new
  # render view with new place form
end

def create

  @place = Place.new
 
  @place["name"] = params["name"]

  # save 
  @place.save

  # redirect user
  redirect_to "/places"
end

def edit
  # find a Company
  @place = Place.find_by({ "id" => params["id"] })
  # render view with edit Company form
end

def update
  # find a Company
  @place = Place.find_by({ "id" => params["id"] })

  # assign user-entered form data to Company's columns
  @place["name"] = params["name"]

  # save Company row
  @place.save

  # redirect user
  redirect_to "/places"
end

def destroy
  # find a Company
  @place = Place.find_by({ "id" => params["id"] })

  # destroy Company row
  @place.destroy

  # redirect user
  redirect_to "/places"
end

end
