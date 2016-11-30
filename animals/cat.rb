# puts "I am in the cat file.. meow!"
require_relative "mammal"
class Cat < Mammal
	def pet
		@health += 5
		return self
	end

	def walk
		@health -= 1
		return self
	end

	def run
		@health -= 10
		return self
	end

	def display_health
		puts "This new animal has a health of #{@health}"
	end
end

Buster = Cat.new
Buster.walk.walk.walk.run.run.pet.pet
Buster.display_health

# Default health by 150 (inherited)
#  A method called pet, which when invoked, increase the health by 5
#  A method called walk, which when invoked, decreases the health by 1
#  A method called run, which when invoked, decreases the health by 10
#  A method called display_health (inherited)
#  Have the Dog walk three times, run twice, petted once, and have it display its health.
