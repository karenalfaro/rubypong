class Ball
	def initialize(window, x)
		@y = 0.0
		@x = x
		@vel_y = 2.0
		@vel_x = 2.0

		@score = 0
		@image = Gosu::Image.new(window, "ball.jpg", true)
	end

	def move
		@x += @vel_x
		@y += @vel_y
		check_bounce_y
	end


	def bounce_x
		@vel_x *= -1
	end

	def bounce_y
		@vel_y *= -1
	end

	def check_bounce_x
	end

	def check_bounce_y
		bounce_y if @y + @vel_y < 0
		bounce_y if @y + @vel_y > 480
	end


	def draw
		@image.draw(@x, @y, 0)
	end

	def hitbox
  		hitbox_x = ((@x - @image.width/2).to_i..(@x + @image.width/2.to_i)).to_a
  		hitbox_y = ((@y - @image.width/2).to_i..(@y + @image.width/2).to_i).to_a
  		{:x => hitbox_x, :y => hitbox_y}
	end


end