class GreaseWeasel #blueprints for all objects = class, bullets in vidgeo games are the most popular form of class 
	attr_accessor :hp, :job, :choke, :speed

	def initialize(name,hp,job,choke,speed) #initialization variables
		@name		=	name
		@hp 		=	hp
		@job 		=	job
		@choke 	= choke
		@speed 	= speed
	end

	def list_stats
		puts "#{@name} Stats:"
		puts "Total HP: #{@hp}"
		puts "Class: #{@job}"
		puts "Total Speed: #{@speed}"
		puts "Total choke: #{@choke}"
	end

	def choke 
		choke_value = rand(@choke + rand(25..50))
		puts "#{@name} chokes for #{choke_value} Points of Health!"
	end

	def speed
		puts "#{@speed}"
	end
end

GreaseWeasel =GreaseWeasel.new("GreaseWeasel", 100, "GreaseWeasel", 50, 20)
GreaseWeasel.list_stats
GreaseWeasel.choke
GreaseWeasel.speed