require "spec_helper"

# NOTE: May not be supported on Rails 3 and require Rails 4+
module FitterHappier
  RSpec.describe "FitterHappier routing spec", type: :routing do
    routes { FitterHappier::Engine.routes }

    it "tests routing" do
      expect(get: "fitter_happier").to route_to(controller: "fitter_happier/heartbeat", action: "index")
      expect(get: "fitter_happier/site_check").to route_to(controller: "fitter_happier/heartbeat", action: "site_check")
      expect(get: "fitter_happier/site_and_database_check").to route_to(controller: "fitter_happier/heartbeat", action: "site_and_database_check")
    end
  end
end
