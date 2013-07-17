include Usagewatch
get "/" do

  content_type :json
  {:disk_used => uw_diskused_perc, :mem_used => uw_memused, :cpu_used => uw_cpuused }.to_json
  
end	
	