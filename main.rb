require_relative 'slots'
require_relative 'item'
require_relative 'character'
c = Character.new
i = Item.new(Slots.SHOULDERS)
c.equip(i)

c.slots.each do |s|
	puts s.item.name unless s.item.nil?
end
