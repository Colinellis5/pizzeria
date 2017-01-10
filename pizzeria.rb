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

def show_menu
  puts "1 - Salami - #{@pizza_salami} Euro"
  puts "2 - Quattro Stagioni - #{@pizza_quattro_stagioni} Euro"
  puts "3 - Ham / Cheese - #{@pizza_ham_cheese} Euro"
  puts "4 - Shoarma - #{@pizza_shoarma} Euro"
end

def take_order
  puts "let's take your order"
  show_menu
  number = gets.chomp
  puts "how many would you like?"
  count = gets.chomp
  puts "ok, so that's #{count} pizza's of number #{number} for you"
end

def total_amount(menu_nr, pizza_cnt)
  price = 0
  price = @pizza_salami if menu_nr == '1'
  price = @pizza_quattro_stagioni if menu_nr == '2'
  price = @pizza_ham_cheese if menu_nr == '3'
  price = @pizza_shoarma if menu_nr == '4'

  amount = price * pizza_cnt

  if amount > 20 then
    # Discount of 10% if over 20 Euro
    amount *= 0.9
  end
  if amount < 10 && amount > 0 then
    # Add delivery costs
    amount += 2.5
  end

  return amount
end
