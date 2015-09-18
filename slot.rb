class Slot
	def initialize(slot)
		@slot = slot
		@item = nil
	end

	def slot
		@slot
	end

	def set_item(item)
		@item = item
	end

	def item
		@item
	end
end
