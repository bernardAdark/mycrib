json.data do
 json.attributes do
  json.id @crib.id
  json.location @crib.location
  json.status   @crib.status
  json.date     nice_date(@crib.created_at)
 end
 json.rels do
  json.tenants @crib.tenants do |tenant|
   json.name tenant.first_name
   json.booked_on nice_date(tenant.created_at)
   json.link crib_tenant_url(@crib, tenant)
  end
  json.link crib_tenants_url(@crib)
 end
end
