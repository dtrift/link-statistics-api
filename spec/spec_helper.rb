require 'rack/test'
require 'rspec'
require 'redis'

require File.expand_path '../../main.rb', __FILE__

include Rack::Test::Methods

def app
  Sinatra::Application
end
