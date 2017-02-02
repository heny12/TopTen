class List < ApplicationRecord
	has_many :items
	# leave optional until user accounts
	belongs_to :user, optional: true

	def all_items
		a = []
		items = self.items
		length = self.length ? self.length - 1 : 9
		for i in 0..length
			item = items.where(order: i).first
			if item
				a[i] = item
			else
				a[i] = Item.create(order: i, list_id: self.id, name: '')
			end
		end
		return a
	end
end
	