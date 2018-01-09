module FitterHappier
  module NewRelicAdapter
    def self.ignore_transaction
      NewRelic::Agent.ignore_transaction
    end
  end
end
