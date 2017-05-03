require 'simplecov'
SimpleCov.start

require 'vcr'

# Example: with_vcr("_3hosts", :record => :new_episodes)
def with_vcr(extension = "", options = {})
  VCR.use_cassette("#{described_class.name}#{extension}", options) do
    yield
  end
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock

  c.allow_http_connections_when_no_cassette = false
  c.default_cassette_options = {
    :allow_unused_http_interactions => false
  }
  c.configure_rspec_metadata!
  # c.debug_logger = STDOUT
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'foreman_api_client'
