require_relative 'slot'
class Character
	def initialize
		@slots = []
		@slots.push(Slot.new(Slots.HEAD))
		@slots.push(Slot.new(Slots.SHOULDERS))
		@slots.push(Slot.new(Slots.AMULET))
		@slots.push(Slot.new(Slots.BRACERS))
		@slots.push(Slot.new(Slots.CHEST))
		@slots.push(Slot.new(Slots.GLOVES))
		@slots.push(Slot.new(Slots.BELT))
		@slots.push(Slot.new(Slots.RING1))
		@slots.push(Slot.new(Slots.RING2))
		@slots.push(Slot.new(Slots.PANTS))
		@slots.push(Slot.new(Slots.BOOTS))
	end

	def equip(item)
		slot = find_slot(item.slot)
		slot.set_item(item)
		puts "#{item.name} Equipped into #{slot.slot}"
	end

	def slots
		@slots
	end

	private

	def find_slot(target_slot)
		slot = nil
		@slots.each do |s|
			slot = s unless s.slot != target_slot
		end
		slot
	end
end
