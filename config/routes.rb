Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get "/travel_log", 
  # get("/", { :controller => "articles", :action => "index" })
  # :controller => "places", :action => "index"

resources "places"
resources "entries"

end
