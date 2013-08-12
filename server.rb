get "/" do
  usw = Usagewatch
  content_type :json
  {:disk_used => usw.uw_diskused_perc,
   :mem_used => usw.uw_memused,
   :cpu_used => usw.uw_cpuused
  }.to_json
  
end
	