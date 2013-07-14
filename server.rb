get "/" do
  u = UsageWatch.new
  content_type :json
  {:disk_used => u.uw_diskused, :mem_used => u.uw_memused, :cpu_used => u.uwcpuused }.to_json
  
end	
	