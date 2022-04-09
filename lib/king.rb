class King < Pieces
	include Stepable

	def move_dir
		[
			[0, 1],
			[0, -1],
			[1, 0],
			[-1, 0],
			[1, 1],
			[1, -1],
			[-1, 1],
			[-1, -1]
	]
	end

	def to_s
		color == :white ? '♔' : '♚'
	end
end

