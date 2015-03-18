class Healer #blueprints for all objects = class, bullets in vidgeo games are the most popular form of class 
	attr_accessor :hp, :job, :wisdom, :speed

	def initialize(name,hp,job,wisdom,speed) #initialization variables
		@name		=	name
		@hp 		=	hp
		@job 		=	job
		@wisdom 	= 	wisdom
		@speed 		= 	speed
	end

	def list_stats
		puts "#{@name} Stats:"
		puts "Total HP: #{@hp}"
		puts "Class: #{@job}"
		puts "Total Speed: #{@speed}"
		puts "Total Wisdom: #{@wisdom}"
	end

	def heal 
		heal_value = rand(@wisdom + rand(25..50))
		puts "#{@name} HEALS for #{heal_value} Points of Health!"
	end

	def speed
		puts "#{@speed}"
	end


end

Medic =Healer.new("Medic", 100, "Healer", 50, 20)
Medic.list_stats
Medic.heal
Medic.speed