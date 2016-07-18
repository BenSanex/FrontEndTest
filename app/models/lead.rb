class Lead < ApplicationRecord
	validates :zipcode, presence: true, if: :is_a_valid_zipcode?

	def is_a_valid_zipcode?
		/\A[0-9]{5}\z/ =~ zipcode
	end
end