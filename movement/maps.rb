# Map Defaults

# Maps are on a 8x8 Cartesian(x,y) Grid

# Movement speed on the map is represented by a number system from 0-50.
# The higher the number, the more difficult it is to move on that particular terrain.

# For example: 

# If the player rolls an 8 on their movement roll they will be able to move across 8
# spaces on the map if the spaces are all '0.' However, if the player encounters a 1
# or higher number then that number is subtracted from the 8 roll that was just rolled.

# Thus more agile units will be able to move through more difficult terrain and slower
# units will either have to go around difficult terrain or tread slowly.

# The Render Map Method allows us to render the rows and columns of the map we want to render
# onto the console so that we have a neat 8x8 grid rendered onto the console.

class Maps
	def initialize(map)
		@map = map
	end

	def render_map(map)
		@map.each_slice(8) {|rows| puts rows.join }
	end
end

#Note: this is an example map, move all maps to a seperate text file
open_plain = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,			
]

open_plain = Maps.new(open_plain)
open_plain.render_map(open_plain)






