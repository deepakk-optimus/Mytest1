class AutoDiscoveryPage

	include PageObject
	direct_url BASE_URL + "auto-disc"

	in_frame(:id => 'myframe') do |frame|

	text_field :filtername, :name => 'filter_name', :frame => frame
	text_field :filtervalue, :name => 'filter_value', :frame => frame
	select_list :filtertype, :name => 'filter_type', :frame => frame
	button :add_range_filter, :name => 'add_filter', :frame => frame
	
	button :newdefinition, :name => 'new_group', :frame=> frame
	text_field :definitionname, :name => 'discover_name_new', :frame=> frame
	select_list :definitionautoschema, :name => 'schema', :frame=> frame
	select_list :controltype, :name => 'auto', :frame=> frame
	select_list :definitiontemplate, :name => 'template', :frame=> frame
	button :createdefi, :name => 'create_group', :frame=> frame
	button :save, :name => 'save_group', :frame => frame

	radio_button :mode, :name => 'auto_GroundWork-Discovery-Pro', :frame=> frame
	radio_button :discname, :name=> 'discover_name_select', :frame=> frame
	checkbox :filter, :name=> 'filter', :frame=> frame
	button :go, :name => 'go', :frame=>frame

	end

	def add_filter(name,type,pattern)
	self.filtername=name
	self.filtertype=type
	self.filtervalue=pattern
	self.add_range_filter
	end

	def new_definition(name,schema,control,template)
	self.newdefinition
	sleep(5)
	self.definitionname=name
	self.definitionautoschema=schema
	self.controltype=control
	self.definitiontemplate=template
	self.createdefi
	self.save
	end

	def disc_host
	self.filter_element.set
	self.discname_element.set
	
	end
	
	
end
