class Vehicle
    def initialize(color,type)
        @color = color
        @type = type
    end
    def honk
        puts "Beep!"
    end
end

car = Vehicle.new("yellow", "cab")
car.honk

# # Instance Variables: Instance variables are available 
# across methods for any particular instance or object. 
# That means that instance variables change from object to object. 
# Istance variables are preceded by the at sign (@) followed 
# by the variable name.