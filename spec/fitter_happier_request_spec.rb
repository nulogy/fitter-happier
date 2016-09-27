require "spec_helper"

module FitterHappier
  RSpec.describe "FitterHappierRequestSpec", type: :request do

    it "can GET index" do
      get "/fitter_happier"

      expect(response.status).to eq(200)
      expect(response.body).to match(/FitterHappier Site Check Passed/)
    end

    it "can GET site_check" do
      get "/fitter_happier/site_check"

      expect(response.status).to eq(200)
      expected_body = %r{FitterHappier Site Check Passed @ [A-z]{3}, \d{2} [A-z]{3} \d{4} \d{2}:\d{2}:\d{2} [0-9\-]+}
      expect(response.body).to match(expected_body)
    end

    it "can GET site_and_database_check" do
      expect(DatabaseCheck).to receive(:schema_version).and_return(12345)

      get "/fitter_happier/site_and_database_check"

      expect(response.status).to eq(200)
      expected_body = %r{FitterHappier Site and Database Check Passed @ [A-z]{3}, \d{2} [A-z]{3} \d{4} \d{2}:\d{2}:\d{2} [0-9\-]+\nSchema Version: \d+}
      expect(response.body).to match(expected_body)
    end
  end
end
