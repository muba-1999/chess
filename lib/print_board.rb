
class PrintBoard
	attr_reader :board

	def initialize(board)
		@board = board
	end

	def print_board
		print "  +----+-----+-----+-----+-----+-----+-----+-----+\n"
		 8.times do |row|
		 	print "#{8 - row}"
			8.times do |col|
				if board.grid[row][col].nil?
					print "      "
				else
					print "  #{board.grid[row][col]}  "
				end	
			end
			puts
			print "  +----+-----+-----+-----+-----+-----+-----+-----+\n"
		end
		('A'..'H').each {|ch| print "   #{ch}  "}
		puts
		puts
	end
end