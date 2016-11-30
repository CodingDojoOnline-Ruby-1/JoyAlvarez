# Create a Project Class that has the following attributes:
# Project name, Project description.
# There should also be a method in there called elevator_pitch which should state what the project name is and what the project description is.

class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
	end

	def elevator_pitch
		puts "\nThe project name is: #{@name} and it is #{@description}"
		self
	end
end

project1 = Project.new("Project1", "an awesome new project that will help you navigate life better!")
puts project1.name
# puts project1.description
project1.elevator_pitch
