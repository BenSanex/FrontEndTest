class LeadsController < ApplicationController

	def create
		if request.xhr?
			@lead = Lead.create(lead_params)
		else
			@lead = Lead.create(lead_params)
			redirect_to :'welcome/index'
		end
	end

	private
	def lead_params
		params.require(:lead).permit(:zipcode)
	end

end