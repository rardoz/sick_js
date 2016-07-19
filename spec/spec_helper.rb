$LOAD_PATH.unshift File.expand_path('/lib', __FILE__)
require 'rails'
require 'sick_js'
Dir["./lib/**/*.rb"].each { |f| require f }
Dir["./app/helpers/**/*.rb"].each { |f| require f }
