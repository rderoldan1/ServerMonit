
require 'rubygems'


require 'json'
require "sinatra"
require './lib/usagewatch_class'
require File.expand_path '../server.rb', __FILE__

run Sinatra::Application