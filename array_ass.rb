

class Task
	def initialize
		@arr_value = Array.new
	end
	def insert_into_array size
		index= 0
		while index < size
			puts "Enter Value in array:#{index}"
			@arr_value.push(gets.chomp.to_i)
			index +=1
		end
	end
	def print_array
		@arr_value.each do |element|
		  puts element
		end
	end
	def sort_array_ascending
		copy = @arr_value.sort.reverse
		puts copy.reverse
		puts "array original"
		puts @arr_value 
	end
	def sort_array_descending
		puts @arr_value.sort 
		puts "array original"
		puts @arr_value 
	end
	def find_max_number
		"the maxuimm number #{@arr_value.max()}"
	end 
	def find_min_number
		"the maxuimm number #{@arr_value.min()}"
	end
	def add_End
		puts "Please Enter your number at the end"
		number_add = gets.chomp.to_i
		puts "befor Array :#{print_array}" 
		@arr_value.push(number_add)
		puts "afret Array :#{@arr_value}" 
	end
	def add_first
		puts "Please Enter your number at add first"
		number_add = gets.chomp.to_i
		puts "befor Array :#{print_array}"
		@arr_value.unshift(number_add)
		puts "afret Array :#{@arr_value}" 
	end
	def add_any_index
		puts "Please Enter your number: "
		number_add = gets.chomp.to_i
		puts "Please Enter your index you went to add"
		index = gets.chomp.to_i

		puts "befor Array :#{print_array}"
		@arr_value.insert(index,number_add)
		puts "afret Array :#{@arr_value}"
	end
	def delete_at
		puts "befor Array :#{@arr_value}"
		puts "Please Enter your index you went delete"
		index = gets.chomp.to_i
		@arr_value.delete_at(index)
		puts "afret Array :#{@arr_value}" 
	end
	def remove_duplicated
		puts "befor duplicated :#{@arr_value}"
		puts "After duplicated #{@arr_value.uniq}" 
	end
	def array_as_string
		puts @arr_value.join(',')
	end
	def print_number_bigers_number
		puts "Please Enter your number"
		number = gets.chomp.to_i
		 for element in @arr_value do
		  	if element<number
		  		next
		  	else
		  		puts element
		  	end
		end 
	end
end



def main
	puts "Enter Your Number ....."
	number = gets.chomp.to_i
	obj_task = Task.new
	obj_task.insert_into_array number
	begin
	puts "************** How To Choics ******************"
	puts "1- print array as it is\n2- Sort array ascending\n3- Sort array descending\n4- return the max number\n5- return the min number\n6- add elements"
	puts "7- delete element at any index\n8- remove duplicated\n9- print array as string , separated by comma\n10- print elements that bigger than following number ( user to enter the number)"
	
		puts "********** Please Enter choices **********"
		choices = gets.chomp.to_i 
		case choices
			when 1
				obj_task.print_array
			when 2
				obj_task.sort_array_ascending
			when 3
				obj_task.sort_array_descending
			when 4
				puts obj_task.find_max_number
			when 5
				puts obj_task.find_min_number
			when 6
				puts "Add To element:"
				puts "1 - to the end\n2- to the First\n3- at any index"
				chois = gets.chomp.to_i
				case chois
					when 1
						obj_task.add_End	
					when 2
						obj_task.add_first
					when 3
						obj_task.add_any_index
				end
			
			when 7
				obj_task.delete_at
			when 8
				obj_task.remove_duplicated
			when 9
				obj_task.array_as_string
			when 10
				obj_task.print_number_bigers_number
		end
		puts "you went to stop ?y/n"
		stop_condetion = gets.chomp.to_s
		unless stop_condetion == 'y'
			raise
		end
		rescue Exception => e
	   		puts e.message
	   		retry
   	end
end

main
   
   
  
  
 
  