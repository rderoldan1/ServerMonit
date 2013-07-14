require 'rubygems'
require 'bundler/setup'

require 'json'
require "sinatra"
require "sinatra/json"
require './lib/usagewatch_class'

get "/" do
  u = UsageWatch.new
  
  u.uw_cpuused
  u.uw_tcpused
  u.uw_udpused
  u.uw_memused
  u.uw_load
  u.uw_bandrx
  u.uw_bandtx
  u.uw_diskioreads
  u.uw_diskiowrites
  content_type :json
  {:disk => u.uw_diskused }.to_json
  
end	
	