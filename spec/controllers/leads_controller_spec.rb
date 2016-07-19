require 'rails_helper'

RSpec.describe LeadsController, :type => :request do
	it 'creates a lead and does not change pages when submitted through ajax' do
		post '/leads',
		params: { lead: {zipcode: '60119'}},
		xhr: true

		expect(response).to_not render_template(:show)
	end

end
