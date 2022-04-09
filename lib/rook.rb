require './slidable.rb'

class Rook < Pieces
	include Slidable

	def move_dir
		[
			[0, 1],
			[0, -1],
			[1, 0],
			[-1, 0]
	]
	end

	def to_s
		color == :white ? '♖' : '♜'
	end
end

