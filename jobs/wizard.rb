class Wizard #blueprints for all objects = class, bullets in vidgeo games are the most popular form of class 
	attr_accessor :hp, :job, :intelligence, :speed

	def initialize(name,hp,job,intelligence,speed) #initialization variables
		@name		=	name
		@hp 		=	hp
		@job 		=	job
		@intelligence 	= 	intelligence
		@speed 		= 	speed
	end

	def list_stats
		puts "#{@name} Stats:"
		puts "Total HP: #{@hp}"
		puts "Class: #{@job}"
		puts "Total Speed: #{@speed}"
		puts "Total intelligence: #{@intelligence}"
	end

	def casts 
		casts_value = rand(@intelligence + rand(25..50))
		puts "#{@name} casts for #{casts_value} Points of Health!"
	end

	def speed
		puts "#{@speed}"
	end


end

Zandatil =Wizard.new("Zandatil", 100, "Wizard", 50, 20)
Zandatil.list_stats
Zandatil.casts
Zandatil.speed