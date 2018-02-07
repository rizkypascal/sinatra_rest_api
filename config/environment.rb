
require 'rubygems'
require 'bundler'
require 'mysql2'
require 'sinatra/activerecord'
require 'sinatra/cross_origin'
require 'lhm'

# set root project
root = File.expand_path '../..', __FILE__

# require bundle
Bundler.require
# load env
Dotenv.load(root + '/.env')

configure do
  set :server, :puma
  set :database_file, root + '/db/config.yml'
end

# ignore LHM
ActiveRecord::SchemaDumper.ignore_tables << /^lhma_/
