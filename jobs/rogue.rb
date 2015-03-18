class Rogue #blueprints for all objects = class, bullets in vidgeo games are the most popular form of class 
	attr_accessor :hp, :job, :dexterity, :speed

	def initialize(name,hp,job,dexterity,speed) #initialization variables
		@name		=	name
		@hp 		=	hp
		@job 		=	job
		@dexterity 	= 	dexterity
		@speed 		= 	speed
	end

	def list_stats
		puts "#{@name} Stats:"
		puts "Total HP: #{@hp}"
		puts "Class: #{@job}"
		puts "Total Speed: #{@speed}"
		puts "Total dexterity: #{@dexterity}"
	end

	def stab 
		stab_value = rand(@dexterity + rand(25..50))
		puts "#{@name} STABS for #{stab_value} Points of Health!"
	end

	def speed
		puts "#{@speed}"
	end


end

Pierce =Rogue.new("Pierce", 100, "Rogue", 50, 20)
Pierce.list_stats
Pierce.stab
Pierce.speed