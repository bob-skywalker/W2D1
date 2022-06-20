class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(num) #
        @age = num
    end

    def bark
        if self.age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food)
        @favorite_foods.each do |el|
            if el.downcase == food.downcase
                return true
            end
        end
        return false
    end

end


# dog_1 = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
# p dog_1

# p dog_1.name
# p dog_1.breed
# p dog_1.age

# dog_1.age = 15
# p dog_1.age
# p dog_1.bark

# p dog_1.favorite_foods?("ChIckEn")
