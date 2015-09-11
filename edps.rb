# Base weapon damage
weapon_damage = 2248

# Primary stat (Int, Dex, etc.)
primary_stat = 9925

# Attack speed
attack_speed = 1.4

# The base weapon damage
base_damage = weapon_damage * (primary_stat / 100.0)

# Base actual damage, i.e attacks for base_damage per second
edps_base = base_damage * attack_speed

# Crit chance
chc = 37

# Crit damage
chd = 458

# Primary skill damage modifier
pskill_damage = 400

# Prints numbers in a more sensible way
# TODO: Actually do what is said above
def human_readable_number(number)
	return number.to_s
	number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

# Base damage modified for crits
base_crit_damage = ((1.0 - (chc / 100.0)) * base_damage) + ((chc / 100.0) * (chd / 100.0) * base_damage)

# Outputs
puts "Base damage: " << (human_readable_number base_damage)
puts "Effective base damage :" << (human_readable_number edps_base)
puts "Crit damage base: " << base_crit_damage.to_s

# Damage value, should map to sheet dps
damage = (human_readable_number base_crit_damage * attack_speed)
puts "Damage: " << damage

# Theoretical damage values of primary skill
pskill_base_damage = edps_base * (pskill_damage / 100.0)
pskill_crit_damage = damage * (pskill_damage / 100.0)
puts "Primary skill base damage: " << (human_readable_number pskill_base_damage)
