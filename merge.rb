def merge_sort array,bool=true 
	array.uniq! unless !bool
	return array if array.length == 1 
	if array.length == 2 
		array[0] > array[1] ? array.unshift(array.pop) : true 
		return array 
	end 

	a = merge_sort(array[0...array.length/2],false )

	b = merge_sort(array[array.length/2..-1],false ) 

	return merge(a,b)
end 

def merge a,b 

	current = 0 
	while b.length != 0 
		while b[0] > a[current]
			current += 1 
			break if a[current] == nil 
		end 
		a.insert(current, b.shift)
		
	end 
	a

end 





