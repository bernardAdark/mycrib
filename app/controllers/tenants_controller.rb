class TenantsController < ApplicationController

  def index
  	@tenants = Tenant.where(crib_id: params[:id])
  end

  def show
  	@tenant  = Tenant.find(params[:id])
  	render :json => @tenant
  end

  def create
  	@crib = Tenant.new(crib_params)
  end

  def destroy
  end

  def crib_params
  	params.require(:crib).permit(:location, :no_of_tenants, :owner, :status)
  end
end
