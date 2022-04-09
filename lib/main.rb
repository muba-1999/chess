require './board.rb'
require './print_board.rb'
require './pawn.rb'
require './rook.rb'
require './king.rb'
require './bishop.rb'
require './queen.rb'
require './knight.rb'
require './slidable.rb'
require './player'
require './chess'


b = Board.game_start
pd = PrintBoard.new(b)
g = Chess.new
g.play