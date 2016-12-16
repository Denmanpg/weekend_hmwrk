print "Would you like to (w)ithdraw, (d)eposit, or (c)heck your balance or (e)nd your session?
if "(w)ithdraw"  # i'd like to make this do a "press w for withdraw"           
   bank_account.withdraw
elsif "(d)eposit"   #  i'd like to make this do a "press d for deposit"
   bank_account.deposit
elsif "(c)heck your balance" #  i'd like to make this do a "press c to check your balance" 
bank_account.show_balance
elseif "(e)nd your session" #  i'd like to make this do a "press e to end your session"
end




#This program is an ATM simulator, it takes user input of deposits and withdrawals, and then     displays the balance after.

class BankAccount

  def initialize(name)
   @transations = []
   @balance = 0
  end

  def deposit
   print "How much would you like to deposit? "
   amount = gets.chomp
   @balance += amount.to_f
   puts "$#{amount} deposited."
  end

  def withdraw
   print "How much would you like to withdraw?"
   amount = gets.chomp
   @balance -= amount.to_f
   puts "#{amount} withdrawn"
  end

  def show_balance
   puts "Your balance is #{@balance}"
  end


end

bank_account = BankAccount.new("Justin G")
bank_account.class # => BankAccount

print "Welcome to Jay's ATM!\n"
bank_account.deposit
bank_account.show_balance
bank_account.withdraw
`enter code here`bank_account.show_balance
puts "Thank you"
