require 'pp'
class Player
	def initialize(window, x)
		@y = 0.0
		@x = x
		@vel_y = 10.0
		@score = 0
		@image = Gosu::Image.new(window, "pal.jpg", true)
	end

	def up
		@y -= @vel_y
		@y = 0 if @y <= 0
	end

	def down
		@y += @vel_y
		@y = 450 if @y >= 450
	end

	def draw
		@image.draw(@x, @y, 0)
	end

	def update
		pp hitbox
	end


	def hitbox
  		hitbox_x = ((@x.to_i)..(@x + @image.width.to_i)).to_a
  		hitbox_y = ((@y.to_i)..(@y + @image.width.to_i)).to_a
  		{:x => hitbox_x, :y => hitbox_y}
	end
end