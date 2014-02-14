require "spec_helper"

describe Api::KeywordsController do
  describe "routing" do

    it "routes to #index" do
      get("/api/keywords").should route_to("api/keywords#index")
    end

    it "routes to #new" do
      get("/api/keywords/new").should route_to("api/keywords#new")
    end

    it "routes to #show" do
      get("/api/keywords/1").should route_to("api/keywords#show", :id => "1")
    end

    it "routes to #edit" do
      get("/api/keywords/1/edit").should route_to("api/keywords#edit", :id => "1")
    end

    it "routes to #create" do
      post("/api/keywords").should route_to("api/keywords#create")
    end

    it "routes to #update" do
      put("/api/keywords/1").should route_to("api/keywords#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/keywords/1").should route_to("api/keywords#destroy", :id => "1")
    end

  end
end
