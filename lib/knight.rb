class Knight < Pieces
	include Stepable

	def move_dir
		[
			[1, 2],
			[2, 1],
			[-1, -2],
			[-2, 1],
			[1, -2],
			[2, -1],
			[-1, -2],
			[-2, -1]
	]
	end

	def to_s
		color == :white ? '♘' : '♞'
	end
end