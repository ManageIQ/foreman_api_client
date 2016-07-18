# Foreman API Client

[![Build Status](https://travis-ci.org/ManageIQ/foreman_api_client.svg?branch=master)](https://travis-ci.org/ManageIQ/foreman_api_client)
[![Code Climate](https://codeclimate.com/github/ManageIQ/foreman_api_client/badges/gpa.svg)](https://codeclimate.com/github/ManageIQ/foreman_api_client)
[![Coverage Status](https://coveralls.io/repos/ManageIQ/foreman_api_client/badge.svg)](https://coveralls.io/github/ManageIQ/foreman_api_client)
[![Security](https://hakiri.io/github/ManageIQ/foreman_api_client/master.svg)](https://hakiri.io/github/ManageIQ/foreman_api_client/master)

A simple wrapper around Apipie-bindings to provide Ruby classes for [Foreman](https://theforeman.org/).

## Installation

Add this line to your application's Gemfile:

    gem 'foreman_api_client', :git => "git://github.com/ManageIQ/foreman_api_client.git", :branch => "master"

And then execute:

    $ bundle

## Usage

```ruby
require 'foreman_api_client'
ForemanApiClient.logger = Logger.new(STDOUT)
connection = ForemanApiClient::Connection.new(
  :base_url   => base_url,
  :username   => username,
  :password   => password,
  :verify_ssl => verify_ssl
)
c.host(1)
=> #<ForemanApiClient::Host:0x0055b8a05daa58 ...>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [Apache License 2.0](https://opensource.org/licenses/Apache-2.0).
