
#class Person

#	attr_accessor :name, :age

#	def initialize(name, age)
#		@name = name
#		@age = age
#	end

#	def name
#		@name
#	end

#	def age
#		@age
#	end

#end

#my_profile = Person.new("Jay", 44)

#puts "Hi, I am #{my_profile.name} and I am #{my_profile.age}-years-old."

#my_profile.name = "King Ruby"

#puts "My name is now #{my_profile.name}."


#attr_reader would be good for attributes that you do not want changed (like ID #s).

#attr_writer would be for some situation where you want to the ability to override data, but not read it back ( ¯\_(ツ)_/¯ )

#attr_accessor would be the combination of the other two: the power to read and the power to override.attr_reader - read only access


class Product

	attr_accessor :sku, :manuf, :price, :qty

	def initialize(sku, manuf, price, qty)
		@sku = sku
		@manuf = manuf
		@price = price
		@qty = qty
	end


	def purchase (purchasedqty)
		@qty -= purchasedqty
	end

end


new_product = Product.new("ABCD", "Acme", 500, 10000)

puts "Current quantity of the product is #{new_product.qty}."

puts "Please enter an amount to purchase"

purchasedqty = gets.chomp.to_i

new_product.purchase(purchasedqty)

puts "New quantity after your purchase is now #{new_product.qty}"
