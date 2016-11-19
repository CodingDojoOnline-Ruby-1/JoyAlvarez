module MyEnumerable
	def my_each
		for num in self # loop to iterate array
			yield num #  { |i| puts i }
	 end
 end
end
class Array
	include MyEnumerable
end
class Hash
	include MyEnumerable
end
[1,2,3,4].my_each {|i| puts i}

{:name => "Joy"}.my_each {|key| puts key}
