module Slidable
	def moves_available
		moves = []
		
		move_dir.each do |dir_row, dir_col|
			cur_row, cur_col = location

			loop do
				cur_row += dir_row
				cur_col += dir_col
				loc = [cur_row, cur_col]


				break unless board.in_bound?(loc)

				if board.is_empty?(loc)
					moves << loc
				end

				if is_enemy?(loc)
					moves << loc
					break
				end
			end
		end
		moves
	end
end