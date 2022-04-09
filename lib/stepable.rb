module Stepable
	def moves_available
		moves = []
		
		move_dir.each do |dir_row, dir_col|
			cur_row, cur_col = location
			
			cur_row += dir_row
			cur_col += dir_col
			loc = [cur_row, cur_col]

			if board.in_bound?(loc) && board.is_empty?(loc) || is_enemy?(loc)
				moves << loc
			end
		end
		moves
	end
end