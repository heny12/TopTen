class Item < ApplicationRecord
	# optional for now
	belongs_to :list, optional: true
end
