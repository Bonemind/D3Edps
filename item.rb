require_relative 'properties'
class Item
	def initialize(slot)
		@slot = slot
		@name = "asddxcvC"
		@statcount = 3
		@stats = []
		generate_stats(@statcount)
	end

	def generate_stats(statcount)
		while @stats.size < statcount
			# Get all available stats for a given slot
			possible = Properties.properties.fetch(Slots.HEAD)

			# Generate a random stat
			stat = possible.keys[rand(possible.keys.size)]

			# If we already have this stat, don't roll it again
			next if has_stat(stat)

			# Get min roll and max roll, generate a random value
			# The store the stat
			stat_values = possible.fetch(stat)
			min = stat_values.fetch(:min)
			max = stat_values.fetch(:max)
			value = rand(max - min) + min
			@stats.push({stat: stat, value: value})
		end
		puts @stats
	end

	def slot
		@slot
	end

	def name
		@name
	end

	def stats
		@stats
	end

	private

	def has_stat(stat)
		@stats.each do |s|
			if s.has_value?(stat)
				return true
			end
		end
		return false
	end
end
