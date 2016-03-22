class Crib < ActiveRecord::Base
  belongs_to :owner
  has_many :tenants

  # def as_json(options = {})
  #  	{json.(self, :id)
  #  	 }	
  #  end
end
