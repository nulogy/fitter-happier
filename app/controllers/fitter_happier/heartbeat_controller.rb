module FitterHappier
  class HeartbeatController < ActionController::Base
    layout nil

    around_action :process_with_silence

    def index
      render plain: "FitterHappier Site Check Passed\n"
    end

    def site_check
      time = Time.now.to_formatted_s(:rfc822)

      render plain: "FitterHappier Site Check Passed @ #{time}\n"
    end

    def site_and_database_check
      version = DatabaseCheck.schema_version
      time = Time.now.to_formatted_s(:rfc822)

      render plain: "FitterHappier Site and Database Check Passed @ #{time}\nSchema Version: #{version}\n"
    end

    private

    def process_with_silence
      NewRelicAdapter.ignore_transaction
      logger.silence { yield }
    end
  end
end
