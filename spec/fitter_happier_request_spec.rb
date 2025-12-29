require "spec_helper"

RSpec.describe "FitterHappier request spec", type: :request do
  include ActiveSupport::Testing::TimeHelpers

  before do
    allow(FitterHappier::DatabaseCheck).to receive(:schema_version)
    freeze_time
  end

  after do
    travel_back
  end

  let!(:frozen_time) { Time.now.to_formatted_s(:rfc822) }

  it "can GET index" do
    get "/fitter_happier"

    expect(response.status).to eq(200)
    expect(response.body).to match(/FitterHappier Site Check Passed/)
  end

  it "can GET site_check" do
    get "/fitter_happier/site_check"

    expect(response.status).to eq(200)
    expected_body = /FitterHappier Site Check Passed @ #{Regexp.escape(frozen_time)}/
    expect(response.body).to match(expected_body)
  end

  it "can GET site_and_database_check" do
    allow(FitterHappier::DatabaseCheck).to receive(:schema_version).and_return(12345)

    get "/fitter_happier/site_and_database_check"

    expect(response.status).to eq(200)
    expected_body = /FitterHappier Site and Database Check Passed @ #{Regexp.escape(frozen_time)}\nSchema Version: 12345/
    expect(response.body).to match(expected_body)
  end

  it "makes NewRelic ignore the requests" do
    expect(FitterHappier::NewRelicAdapter).to receive(:ignore_transaction).exactly(3).times

    get "/fitter_happier"
    get "/fitter_happier/site_check"
    get "/fitter_happier/site_and_database_check"

    expect(response.status).to eq(200)
  end
end
