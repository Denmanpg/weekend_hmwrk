class Customer #this is our class. Everything below this falls under this class. So when you call a method it would be (customer.deposit)

    attr_accessor :name, :balance #this is 

    def initialize(name, balance)
        @name = name
        @balance = balance
    end

    def check_balance
        puts "Hello #{name} ! Your balance is #{self.balance}"
    end

    def deposit(amount)
        self.balance += amount
    end

    def withdraw(amount)
        if amount > self.balance
            puts "I'm sorry...you don't have enough money!"
        else
            self.balance -= amount
        end
    end
end

