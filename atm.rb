my_account = {
	"Checking" => 100.00,
	"Savings" => 1000.00
}

def show_accounts(accounts)
	puts accounts
	puts "Account Balance: "
	accounts.each do |key, value|
		puts "#{key}: $#{'%.2f' % value}".center(50/2).upcase
	end
end

def deposit_money(accounts, account, amount)
	if accounts.has_key?(account)
		accounts[account] += amount
	else
		puts "The account you requested does not exist."
	end
	puts
	puts "Your transaction has been successfully processed."
end

def withdraw_money(accounts, account, amount)
	if accounts.has_key?(account)
		if amount > accounts[account]
	puts "Your transaction cannot be processed due to insufficient funds."
	else
		accounts[account] -= amount
	end
	else
		puts "The account you requested does not exist."
	end
end

def ask_pin
	puts "Welcome to your ATM experience!"
	print "Please enter your PIN"
	pin = gets.chomp
	counter = 0

	while 

while true
	puts "Welcome to the Bank of Everyone!"
	puts "1. Check Account Balances."
	puts "2. Deposit money to an account."
	puts "3. Withdraw money from an account."
	puts "4. Complete Transaction."

		choice = gets.chomp
		case choice
		when "1"
			show_accounts(my_account)
		when "2"
			puts "Which account would you like to deposit money into?"
			more_money = gets.chomp
			puts "How much money would you like to deposit?"
			amount = gets.chomp.to_i
			deposit_money(my_account, more_money, amount)
		when "3"
			puts "Which account would you like to withdraw money from?"
			less_money = gets.chomp.to_f
			puts "How much money would you like to withdraw?"
			amount = gets.chomp
			withdraw_money(my_account, less_money, amount)
		when "4"
			puts "Thank you. Your transaction has been completed."
			break
		end
	end

show_accounts(my_account)



