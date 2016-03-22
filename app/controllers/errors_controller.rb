class ErrorsController < ActionController::Base

	def not_found
		render :json => {status: 404, message: "Could not locate item"}
	end

end