# Basic Code for a Warrior Class. 
# This code gives us code that allows us to create Warrior Objects (Remember Classes are just the blueprints for "constructing an object") Yeah i know that means very litle right now.
# Anyway try to grok as much of this as you can.

class Warrior
  attr_accessor :hp, :job, :strength, :speed
  # attr_accessor is a "method" even though it looks different from a normal method.
  # attr_accessor allows us to "READ" and "WRITE" to any variable within the class definition. 
  # To signify this we use the "@" symbol. This means its an "Instance Variable" and can be accessed
  # anywhere within the SCOPE of the class as you'll see in the rest of this program.
	
  def initialize(name,hp,job,strength,speed)
    @name     =  name
    @hp       =  hp
    @job      =  job
    @strength =  strength
    @speed    =  speed
  end

  # def initialize means that when we initialize an object from the warrior class we need to make
  # sure the object is created with the above properties (name,hp,job,strength,speed)

  def list_stats
    puts "#{@name} Stats:"
    puts "Total HP: #{@hp}"
    puts "Class: #{@job}"
    puts "Total Strength: #{@strength}"
    puts "Total Speed: #{@speed}"
  end

  # This method lists the stats of the warrior object after it has been instantiated.

  def attack #basic attack for now
    attack_value = strength + rand(25..50)
    puts "#{@name} SWINGS his Weapon for #{attack_value} Points of Damage!"
  end

  def movement
    puts "#{@name} has moved #{rand(1..2) + (@speed/2)} spaces"
  end
end

Paso = Warrior.new("Paso", 100, "Warrior", 50, 5)
# This is where the magic happens. This is where we instantiate an object from the warrior class. 
# You can change some of the "properties" and see how that changes the code up.
Paso.list_stats
# I'm calling the "list_stats" method on the Paso Object here.
Paso.attack
# I'm calling the "attack" method on the Paso Object here.
Paso.movement
# I'm calling the "speed" method on the Paso Object here. 
