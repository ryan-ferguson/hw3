class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @post["place_id"]})
    # render contacts/show view with details about Contact
  end

  def new
    @place = Place.find_by({ "id" => params["company_id"] })
    # render contacts/new view with new Contact form
  end

  def create
    # start with a new Contact
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["description"] = params["description"]
    # @entry["date"] = params["posted_on"]

    # assign relationship between Contact and Company
    @entry["place_id"] = params["place_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end






















end
