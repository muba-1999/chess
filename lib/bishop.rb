class Bishop < Pieces
	include Slidable
	
	def move_dir
		[
			[1, 1],
			[1, -1],
			[-1, 1],
			[-1, -1]
	]
	end

	def to_s
		color == :white ? '♗' : '♝'
	end
end
