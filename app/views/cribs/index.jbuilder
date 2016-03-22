json.data do	
	json.cribs @cribs do |crib|
	 	json.attributes do
		  	json.id crib.id
		  	json.location crib.location
		  	json.number_of_tenants crib.no_of_tenants

	    end
	    json.rels  do 
	    	json.tenants crib.tenants do |tenant|
	 		json.id tenant.id
	 		json.name tenant.first_name
	 		json.link crib_tenant_url(crib,tenant)
	 		end
	 		json.owner do
	 			json.name	crib.owner.firstname
	 		end
			json.self_link crib_url(crib)	
	 	end 
	 
	end
end

