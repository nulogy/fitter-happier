module FitterHappier
  module DatabaseCheck
    def self.schema_version
      table_name = (Rails::VERSION::STRING >= '2.1.0' ? 'schema_migrations' : 'schema_info')
      query = "SELECT max(lpad(version, 20, '0')) FROM #{table_name}"
      ActiveRecord::Base.connection.select_value(query).to_i
    end
  end
end
