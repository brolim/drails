class Quadcopter

	DIRECTION = {'up'    => 'up',
				 'down'  => 'down',

				 'east' => 'east',
				 'west' => 'west',
				 'north' => 'north',
				 'south' => 'south'}


	def Quadcopter.start
		print "\n=== Starting Quadcopter... "
		puts "OK\n"
		print "=== Running... "
	end


	def Quadcopter.move direction
		case direction
		when DIRECTION['up']
			puts 'up'

		when DIRECTION['down']
			puts 'down'

		when DIRECTION['east']
			puts 'east'

		when DIRECTION['west']
			puts 'west'

		when DIRECTION['north']
			puts 'north'

		when DIRECTION['south']
			puts 'south'

		end

	end
end