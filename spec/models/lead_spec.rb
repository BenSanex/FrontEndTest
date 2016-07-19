require 'rails_helper'

RSpec.describe Lead, type: :model do
	let!(:lead) {Lead.create(zipcode: '60119')}

	it 'has a valid zipcode' do
		expect(lead).to have_attributes(zipcode: '60119')
	end

	it "doesn't allow invalid zipcodes" do
		expect(Lead.create(zipcode:'6019')).to_not be_valid
	end

end
