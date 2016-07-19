class Lead < ApplicationRecord
	validates :zipcode, presence:true
	validates :zipcode, :format => { :with => /\A[0-9]{5}\z/,
    :message => "Must be a valid zip code format" }

end