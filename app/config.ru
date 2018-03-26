require 'require_all'
require_relative '../config/environment'

# set root project
root = File.expand_path '../..', __FILE__

# require lib and controller
# require_all root + '/app/serializer/**/*.rb'
require_all root + '/app/controller/**/*.rb'

run ApplicationController
map('/healthz') { run HealthzController }
