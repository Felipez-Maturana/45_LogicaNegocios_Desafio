class Usuario < ApplicationRecord
	has_many :tweet, dependent: :destroy
end
