# This is my hash
liquors = { 
	"Jameson" => 6,
	"Johnny_Walker" => 3,
	"Jager" => 1,
	"Topo" => 2
}


def show_inventory(inventory)
	puts inventory
end

def add_liquor(inventory, liquor)
	if inventory.has_key?(liquor)
		puts "Uh Oh! It looks like this liquor already exists in the inventory!"
	else
		inventory[liquor] = 0
	end
end

def remove_liquor(inventory, liquor)
	if inventory.has_key?(liquor)
		puts "This liquor already exists in the inventory."
	else 
		puts "This liquor doesn't exist in the inventory."
	end
end

def buy_liquor(inventory, liquor, stock)
	if inventory.has_key?(liquor)
		inventory[liquor] += stock
	else 
		puts "We don't sell that liquor here."
	end
end

def sell_liquor(inventory, liquor, stock)
	if inventory.has_key?(liquor)
		if stock > inventory[liquor]
			puts "We don't have enough of that liquor in stock, sorry."
		else
			inventory[liquor] -= stock
		end
	else
		puts "We don't sell that liquor here!"
	end
end

while true
	puts "Welcome to Two Fingers Bar!"
	puts "Here is our menu:"
	puts "1. To see the Inventory."
	puts "2. To add a new liquor to our inventory."
	puts "3. To remove a liquor from our inventory."
	puts "4. To buy a liquor from our inventory."
	puts "5. To sell a liquor from our inventory."
	puts "6. To leave for the night!"

		choice = gets.chomp
		case choice
		when "1"
			show_inventory(liquors)
		when "2"
			puts "Which liquor would you like to add?"
			new_liquor = gets.chomp
			add_liquor(liquors, new_liquor)
		when "3"
			puts "Whcih liquor would you like to remove?"
			existing_liquor = gets.chomp
			remove_liquor(liquors, existing_liquor)
		when "4"
			puts "Which liquor would you like to buy?"
			more_liquor = gets.chomp
			puts "How many bottles would you like to buy?"
			amount = gets.chomp.to_i
			buy_liquor(liquors, more_liquor, amount)
		when "5"
			puts "Which liquor would you like to sell?"
			sell_liquor = gets.chomp
			puts "How many bottles of " + sell_liquor + " would you like to sell?"
			amount = gets.chomp.to_i
			sell_liquor(liquors, sell_liquor, amount)
		when "6"
			break
		end
end


show_inventory(liquors)