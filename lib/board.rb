require './pieces.rb'

class Board
	attr_accessor :grid

	def self.game_start
		board = self.new
		# board = board_grid.grid 

		8.times do |col|
			board.grid[1][col] = Pawn.new(board, [1, col], :black)
			board.grid[6][col] = Pawn.new(board, [6, col], :white)
		end

		(0...8).step(7) do |col|
			board.grid[0][col] = Rook.new(board, [0, col], :black)
			board.grid[7][col] = Rook.new(board, [7, col], :white)
		end

		(1...8).step(5) do |col|
			board.grid[0][col] = Knight.new(board, [0, col], :black)
			board.grid[7][col] = Knight.new(board, [7, col], :white)
		end

		(2...8).step(3) do |col|
			board.grid[0][col] = Bishop.new(board, [0, col], :black)
			board.grid[7][col] = Bishop.new(board, [7, col], :white)
		end


		board.grid[0][4] = King.new(board, [0, 4], :black)
		board.grid[7][4] = King.new(board, [7, 4], :white)

		board.grid[0][3] = Queen.new(board, [0, 3], :black)
		board.grid[7][3] = Queen.new(board, [7, 3], :white)

		board
	end

	def initialize
		@grid = Array.new(8) { Array.new(8) {   }  }
	end

	def []=(loc, piece)
		row, col = loc
		grid[row][col] = piece
	end

	def [](position)
		row, col = position
		grid[row][col]
	end

	def in_bound?(position)
		row, col = position
		row >= 0 && row < grid.length && col >= 0 && col < grid.length
	end

	def is_empty?(position)
		row, col = position

		grid[row][col].nil?
	end

	def piece_move(start_pos, end_pos)
		piece = self[start_pos]

		raise 'Invalid move!!' unless piece.moves_available.include?(end_pos)

		unless in_bound?(end_pos)
			raise 'Invalid move!!'
		end

		self[start_pos] = nil

		self[end_pos] = piece

		piece.location = end_pos
	end
end

