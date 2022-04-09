class Chess
	attr_reader :player1, :player1
	attr_accessor :current_player

	def initialize
		@player1 = Player.new(:white)
		@player2 = Player.new(:black)
		@current_player = player1
	end

	def player_swap
		self.current_player = (current_player == player1 ? player2 : player1)
	end

	def play
		puts "its #{current_player.color}'s turn"
	end
end