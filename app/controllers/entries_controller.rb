class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @post["place_id"]})
    
  end

  def new
    @place = Place.find_by({ "id" => params["company_id"] })
    
  end

  def create
   
    @entry = Entry.new

    
    @entry["description"] = params["description"]
   

    
    @entry["place_id"] = params["place_id"]

   
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end






















end
