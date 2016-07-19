require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do

  it "displays on page load" do
    assign :lead, Lead.new
    render

    expect(rendered).to have_css("h3", text: "PLANNING")
  end

  pending 'closes the popup with a button' do
  	assign :lead, Lead.new
  	render
  	page.find('#close').click
  	expect(rendered).to have_css("h3", text: "PLANNING")
	end


end