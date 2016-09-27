module FitterHappier
  module DatabaseCheck
    def self.schema_version
      query = "SELECT max(lpad(version, 20, '0')) FROM schema_migrations"
      ActiveRecord::Base.connection.select_value(query).to_i
    end
  end
end
