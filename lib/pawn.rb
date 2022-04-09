require './stepable.rb'

class Pawn < Pieces
	def forward_dir
		color == :black ? 1 : -1
	end

	def at_start_pos?
		color == :black && cur_row == 1 || color == :white && cur_row == 6
	end

	def moves_available
		moves = []

		one_step_forward = [cur_row + forward_dir, cur_col]
		row, col = one_step_forward

		if board.is_empty?(one_step_forward)
			moves << one_step_forward
		end

		#the pawn moves two steps forward if the at the starting position

		two_step_forward = [cur_row + (forward_dir * 2), cur_col]
		row, col = two_step_forward

		if board.is_empty?(two_step_forward) && board.is_empty?(one_step_forward) && at_start_pos?
			moves << two_step_forward
		end

		# pawn moves left or right if there is an enemy

		left_diag = [cur_row + forward_dir, cur_col + 1]
		right_diag = [cur_row + forward_dir, cur_col - 1]

		if is_enemy?(left_diag)
			moves << left_diag
		end
		if is_enemy?(right_diag)
			moves << right_diag
		end

		moves.select {|move| board.in_bound?(move)}

	end

	def move_dir
		[[0, 1]]
	end

	def to_s
		color == :white ? '♙' : '♟'
	end
end