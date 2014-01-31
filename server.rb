get "/" do
  usw = Usagewatch
  content_type :json
  json = {}
  methods = [:uw_diskused, :uw_diskused_perc, :uw_cpuused, :uw_cputop, :uw_memtop, :uw_memused,
   :uw_load, :uw_bandrx, :uw_bandtx, :uw_httpconns, :uw_load]
  methods.each do |method|
    begin
      json.merge!({"#{method.to_s.gsub('uw_', '')}" => usw.send(method)})
    rescue
    end
  end
  json.to_json
  
end
	