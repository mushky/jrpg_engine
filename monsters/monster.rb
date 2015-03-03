class Monster
	attr_accessor :name, :hp, :strength, :speed

	def initialize(name, hp, strength, speed)
		@name 		= name
		@hp   		= hp
		@strength = strength
		@speed 		= speed
	end

	def list_stats
		puts "______________________________"
		puts "#{@name} Stats: "
		puts "Total HP: #{@hp}"
		puts "Total Strength: #{@strength}"
		puts "Total Speed: #{@speed}\n"
		puts "______________________________"
	end

	def attack
		puts "#{@name} SWINGS his Weapon for #{rand(1..25) + @strength} Points of Damage."
	end
end

baga = Monster.new("Baga", 120, 90, 20)
baga.list_stats
baga.attack

