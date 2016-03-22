class CribsController < ApplicationController
  def index
  	@cribs = Crib.all
  end

  def show
  	@crib  = Crib.find(params[:id]) 
    rescue
    redirect_to not_found_path
  end

  def create
  	@crib = Crib.new(crib_params)

  end

  def destroy
  end

  def crib_params
  	params.require(:crib).permit(:location, :no_of_tenants, :owner, :status)
  end
end
