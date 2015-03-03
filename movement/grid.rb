class Grid
	def initialize(cols, rows)
		@rows = rows
		@cols = cols
	end

	def create_world
		@grid =

		Array.new(@rows) do |row|
			row.inspect
			Array.new(@cols) do |col|
				col.inspect
			end
		end
	end

end

paso_valley = Grid.new(3,5)
print paso_valley.create_world

