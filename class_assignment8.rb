array = []
x  rand(1..10)
while x != 7
	x = rand(10)



array = []
x= rand(1..10)
while x != 7
	puts xarray.push(x)
	x = rand(10)
end

count = 0
array.each do |x|
	if x<6
		count += 1
		puts x
		end	
	end
end

puts "There are #{count} numbers under 6."