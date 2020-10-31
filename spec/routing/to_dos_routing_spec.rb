require "rails_helper"

RSpec.describe ToDosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/to_dos").to route_to("to_dos#index")
    end

    it "routes to #new" do
      expect(:get => "/to_dos/new").to route_to("to_dos#new")
    end

    it "routes to #show" do
      expect(:get => "/to_dos/1").to route_to("to_dos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/to_dos/1/edit").to route_to("to_dos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/to_dos").to route_to("to_dos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/to_dos/1").to route_to("to_dos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/to_dos/1").to route_to("to_dos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/to_dos/1").to route_to("to_dos#destroy", :id => "1")
    end
  end
end
