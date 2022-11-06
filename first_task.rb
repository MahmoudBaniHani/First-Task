
#defined a class that is a super class

class RentAvehicle
	@price = 0
	def initialize(price)
		@price = price
	end
	def get_price  
        @price
    end
    def getdiscount(num)
        dis = 0;
        case num
        	when 1..2
        		dis = 0
            when 3..5
                dis = 0.1
            when 6..10
                dis = 0.3
            else
                dis = 0.4
            end
        dis
    end
	def print_deteles(duration,total_price,rate_discount,total_price_after_discount)
	    puts "********************************************************"
	    puts "Your Choices : #{getname}"  
	    puts "Price in Day : #{@price}"
	    puts "Duration Rent: #{duration}" 
	    puts "Total Price: #{total_price}"
	    puts "Discount: #{rate_discount}" 
	    puts "Total Price after discount: #{total_price_after_discount}"
	    puts "********************************************************"
    end
end
class Car < RentAvehicle
    @name
    def getname
        @name = "Car"

    end
end
class MotorCycle < RentAvehicle
	@name
    def getname
        @name = "MotorCycle"

    end
end
class Van < RentAvehicle
	@name
    def getname
        @name = "Van"

    end
end


def main

	begin
		puts "********  Welcome To Rent A Car Vehicle ********"
	    puts "Car\t\tPrice/day"
	    puts "---------------------------------------------"
	    puts "1- MotorCycle\t20JD \n2- Car\t\t50JD \n3- Van\t\t70JD"
	    puts "---------------------------------------------"
	    puts "Please Enter Your Type of Car you want you :....."
	    choices = gets.chomp.to_i
	    if choices > 0 and choices <=3
	    	puts "Please Enter Number Days  Duration :....."
        	num_on_day = gets.chomp.to_i
        	case choices
	            when 1
	            	motor= MotorCycle.new(20)
	                price = motor.get_price
	                rate_discount = motor.getdiscount(num_on_day)
	                total_price = price * num_on_day
	                total_price_after_discount = total_price -(total_price * rate_discount)
	                motor.print_deteles(num_on_day,total_price,rate_discount,total_price_after_discount)
	            when 2
	                car = Car.new(50)
	                price = car.get_price
	                rate_discount = car.getdiscount(num_on_day)
	                total_price = price * num_on_day
	                total_price_after_discount = total_price -(total_price * rate_discount)
	                car.print_deteles(num_on_day,total_price,rate_discount,total_price_after_discount)
	            when 3
	                van = Van.new(70)
	                price = van.get_price
	                rate_discount = van.getdiscount(num_on_day)
	                total_price = price * num_on_day
	                total_price_after_discount = total_price -(total_price * rate_discount)
	                van.print_deteles(num_on_day,total_price,rate_discount,total_price_after_discount)
	        end
			puts "You went to rate:y/n ? ........"
			ask = gets.chomp.to_s
			unless ask == "y"
			    raise
			else
			   puts "*********  Thank you  *********"
			end
		else
			puts "\n\nPlease choise bettwen 1-3 Please try again\n\n"
			aise
		end
		rescue
			retry
	end

end


main