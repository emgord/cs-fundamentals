require 'pry'

def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length <= 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	combine(left,right)
end

def split_array(a)
<<<<<<< HEAD
	# find the middle
	mid = a.length/2
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	return a[0..mid-1], a[mid..-1]
=======
	# find the middle index
	# split the array in half - take a look at take and drop in the ruby docs, or use ranges 
	# return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
<<<<<<< HEAD
	result_array = []
=======
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
	until a.length == 0 || b.length == 0
		# push the smaller element onto the result array
<<<<<<< HEAD
		if a[0] <= b[0]
			result_array.push(a.slice!(0))
		else
			result_array.push(b.slice!(0))
		end
	end
=======
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
	# if there are elements left over in a, move them to result
		result_array += a if a.length != 0
	# if there are elements left over in b, move them to result
<<<<<<< HEAD
		result_array += b if b.length != 0
	return result_array
=======
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
sorted = a.sort
puts "ORIGINAL \n" + a.to_s
merged = mergesort(a)
puts "AFTER MERGESORT \n" + merged.to_s
puts "RUBY SORT \n" + sorted.to_s
if merged == sorted
	puts"hooray!"
else
	puts "boooo!"
end
