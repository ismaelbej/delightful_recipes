require "rails_helper"

RSpec.describe TimeOffsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/time_offs").to route_to("time_offs#index")
    end

    it "routes to #new" do
      expect(get: "/time_offs/new").to route_to("time_offs#new")
    end

    it "routes to #show" do
      expect(get: "/time_offs/1").to route_to("time_offs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/time_offs/1/edit").to route_to("time_offs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/time_offs").to route_to("time_offs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/time_offs/1").to route_to("time_offs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/time_offs/1").to route_to("time_offs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/time_offs/1").to route_to("time_offs#destroy", id: "1")
    end
  end
end
