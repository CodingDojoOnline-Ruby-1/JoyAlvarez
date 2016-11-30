class Project
	attr_accessor :name, :description
	def initialize name, description
		@name = name
		@description = description
	end
	
	def elevator_pitch
		"#{@name}, #{@description}"
	end
end
project1 = Project.new("My awesome project!", "Testing Ruby")
puts project1.name  #this prints out project1
puts project1.elevator_pitch #prints out name & description of project1
