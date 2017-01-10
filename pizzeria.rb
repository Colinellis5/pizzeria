def initialize_pizzas
  @pizza_salami = 4.0
  @pizza_quattro_stagioni = 8.5
  @pizza_ham_cheese = 6.25
  @pizza_shoarma = 7.3
end

def customer_name
  print "What's your name? "
  return gets.chomp
end
