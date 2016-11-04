# Exercises from platform
x = {"first_name" => "Coding", "last_name" => "Dojo"}

puts x["first_name"] , x["last_name"]
puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

y = {:first_name => "Melanie", :last_name => "Smith"}

puts "Y is ", y
puts y[:first_name], y[:last_name]

puts "Deleting :first_name"
y.delete(:first_name)
puts "Y is now ", y

####################
if y.has_key? :first_name
	puts "Y has a key called :first_name"
else
	puts "Y does not have a key called :first_name"
end
###################
if y.has_value? "Smith"
	puts "Y has a value called Smith"
else
	puts "Y does NOT have a value called Smith"
end
############################################
# Challenge: Useful Methods
# Go ahead and try the following methods:

# .delete(key) => deletes and returns a value associated with the key
# e.g. h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); print h      #=> [:first_name, "Coding"]
# .empty? => returns true if hash contains no key-value pairs
# .has_key?(key) => true or false
# .has_value?(value) => true or false

z = {:first_name => "Joy", :last_name => "McCoy"}

puts z[:first_name], z[:last_name]

puts z.delete(:last_name)

puts z.empty?

puts z.has_key?(:first_name)

puts z.has_value?("Joy")
