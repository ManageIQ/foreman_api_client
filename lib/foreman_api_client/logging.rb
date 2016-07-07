require "foreman_api_client/null_logger"

module ForemanApiClient
  extend self
  attr_accessor :logger

  module Logging
    def logger
      ForemanApiClient.logger ||= NullLogger.new
    end

    def logger=(new_logger)
      ForemanApiClient.logger = new_logger
    end

    def dump_hash(hash)
      filtered_keys = ["root_pass"]
      new_hash = hash.dup
      filtered_keys.each { |k| new_hash[k] = "<FILTERED>" }
      new_hash.inspect
    end
  end
end
