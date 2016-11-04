# Create a ruby script that goes over each name in the names array and prints something like below.
#
# You got 5 names in the 'names' array
# The name is 'Michael Choi'
# The name is 'John Supsupin'
# The name is 'KB Tonel'

a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
f = {:first_name => "Joy", :last_name => "Alvarez"}
g = {:first_name => "Todd", :last_name => "Enders"}
names = [a, b, c, d, e, f, g]

puts "You have #{names.length} names in the names array"
names.each {|human| puts "Hi there, my name is #{human[:first_name]} #{human[:last_name]}!"}
