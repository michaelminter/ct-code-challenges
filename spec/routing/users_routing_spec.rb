require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/timeline/1").to route_to("users#index", id: "1")
    end

    it "routes to #show" do
      expect(get: "/user/1").to route_to("users#show", id: "1")
    end
  end
end
