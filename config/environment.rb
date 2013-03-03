# Load the rails application
require File.expand_path('../application', __FILE__)

Board::Application.configure do
  config.middleware.use ::Rack::PerftoolsProfiler, :default_printer => 'text', :bundler => true
end

# Initialize the rails application
Board::Application.initialize!
