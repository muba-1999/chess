class Player
	attr_reader :color

	def initialize(color)
		@color = color
	end

	def get_pos
		gets.chomp
	end
end