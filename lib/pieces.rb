class Pieces
	attr_accessor :color, :board, :location

	def initialize(board, location, color)
		@color = color
		@board = board
		@location = location
	end

	def is_enemy?(position)
		row, col = position
		!board.grid[row][col].nil? && board.grid[row][col].color != color
	end

	def cur_row
		location.first
	end

	def cur_col
		location.last
	end
end