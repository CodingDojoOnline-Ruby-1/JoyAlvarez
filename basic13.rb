# 1) Print 1-255
# Write a program (sets of instructions) that would print all the numbers from 1 to 255.
(1..255).map {|num| puts num}

# 2) Print odd numbers between 1-255
# Write a program (sets of instructions) that would print all the odd numbers from 1 to 255.

(1..255).reject {|i| i % 2 == 0}

# 3) Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
#
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New Number: 2 Sum: 3
# New number: 3 Sum: 6
# New Number: 255 Sum: ___.

sum = 0
(0..255).each {|i| puts "New number: #{i} and the Sum is now: #{sum +=i}"}

# 4) Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.  Being able to loop through each member of the array is extremely important.
x = [1,3,5,7,9,13]
puts x.each {|i| i}

# 5) Find Max
# Write a program that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.

a = [3,4,-6,78,9,-23,4,67,1,0]
puts a.max.to_s
puts a.min.to_s

b = [-2, -1,-4, -9]
puts b.max.to_s
puts b.min.to_s

# 6) Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. You can use a count function with this assignment.

r = [2, 10, 4, 7, 33]
puts r.reduce(:+) / r.length # THIS IS VERY SLICK!

# 7) Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

y = (1..255)
puts y.reject {|i| i % 2 == 0}

# another way to write this:
puts y = (1..255).select {|i| i.odd?}


# 8) Greater Than y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
y = 4
arr = [2, 4, 56, 3, 21, 78, 0, 16, 29]
count = 0
arr.each {|arr| count+=1 if arr > 4} # what's the point of the variable y?  I think you meant to use it here :)
puts "There are #{count} numbers in my array greater than 4"

# 9) Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm that multiplies each value in the array by itself.  When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
x = [1, 5, 10, -2]
x.each {|x| puts x * x} # Is this affecting the original array or is it only puts'ing the squared values?

# 10) Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.  When the program is done, x should have no negative values, say [1, 5, 10, 0].

x = [-2, 4, -6, 45, -5, -8, 4]
x.each {|x| if x > 0 then puts x else puts 0 end}

# 11) Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array, the minimum value in the array, and the average of the values in the array.

y = [1, 5, 10, -2]
puts y.max.to_s
puts y.min.to_s
puts y.reduce(:+) / r.length

# 12) Shifting the values in the array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.  For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

z = [1, 5, 10, 7, -2]
count = 0
z.each {z[count] = z[count +=1]}
z[z.size-1] = 0
puts "Now the array has shifted to read #{z}"

# 13) Number to string
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.  For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

y = [-1, 3, 7, -8, 10, -4]
y.each {|y| if y > 0 then puts y else puts "Dojo" end} # This is only puts'ing correct? How would you replace?
