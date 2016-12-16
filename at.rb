require_relative 'customer'

class ATM

	def start_account
		puts "Welcome: Enter you name:"
		name = gets.chomp
		puts "Hello #{name}! How much would you like to start with in your account?"
		amount = gets.chomp.to_i
		my_customer = Customer.new(name, amount)
		menu(my_customer, amount)
	end




	def menu(customer, balance)

		while true

		puts "Welcome #{customer.name}! Choose an option:"
		puts "1. Check your balance"
		puts "2. Make a deposit"
		puts "3. Withdraw an amount"
		puts "4. Exit"

		choice = gets.chomp
		
		case choice
			when "1"
				customer.check_balance

			when "2"
				puts "How much would you like to deposit?"
				amount = gets.chomp.to_is
				customer.deposit(amount)
			
			when "3"
				puts "How much would you like to withdraw?"
				amount = gets.chomp.to_i
				customer.withraw(amount)
			
			when "4"
				puts "Goodbye"
				break
			end
		end
	end
end

my_atm = ATM.new
my_atm.use



		end

end