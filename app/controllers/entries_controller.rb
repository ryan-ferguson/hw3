class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
    
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
    
  end

  def create
   
    @entry = Entry.new

    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    
    @entry["place_id"] = params["place_id"]

    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end

  def destroy
    @entry = Entry.find_by({ "id" => params["id"] })
    @entry.destroy
    redirect_to "/places/#{@entry["place_id"]}"
  end

  def edit
    @entry = Entry.find_by({ "id" => params["id"] })
    @place = Place.find_by({ "id" => @entry["place_id"] })
  end

  def update
    @entry = Entry.find_by({ "id" => params["id"] })
    @entry["description"] = params["description"]
    @entry.save
    redirect_to "/places/#{@place["id"]}"
  end
















end
