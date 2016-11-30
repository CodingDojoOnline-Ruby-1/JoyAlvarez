# Create a file mammal.rb. In this file, create a Mammal Class with a health value of 150. Also add a method called display_health, which when invoked, prints the health of the Mammal.

# puts "i am the mammal"
class Mammal
	attr_accessor :health
	def initialize
		@health =  150
	end

	def display_health
		puts "This mammal has a health of #{@health}"
		self
	end
end

monster = Mammal.new
monster.display_health
