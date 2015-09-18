class Properties
	@@properties = {
		Slots.HEAD =>  {
			intelligence: {
				min: 300,
				max: 600
			},

			strength: {
				min: 300,
				max: 600
			},

			dexterity: {
				min: 300,
				max: 600
			},

			vitality: {
				min: 300,
				max: 600
			},
		}
	}

	def self.properties
		@@properties
	end
end
