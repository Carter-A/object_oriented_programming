class Receipt
attr_accessor :item, :price, :tax

def initialize(item, price, tax)
  @item = item
  @price = price
  @tax = tax
end

def round_point5
    (self*2).round / 2.0
end

def sales_tax
  ((self.tax * self.price)*20.0).round/20.0
end

def total
  (self.price + self.sales_tax).round(2)
end

end

book = Receipt.new("Book", 12.49, 0.0)
music = Receipt.new("Music CD", 14.99, 0.10)
chocolate = Receipt.new("Chocolate Bar", 0.85, 0.0)

puts "Receipt One"
puts "#{book.item} : $#{book.total}"
puts "#{music.item} : $#{music.total}"
puts "#{chocolate.item} : $#{chocolate.total}"
puts "Sales Tax : #{music.sales_tax}"
puts "Total : #{book.total + music.total + chocolate.total}"

box = Receipt.new("Box of Chocolate", 10.00, 0.05)
bottle = Receipt.new("Bottle of Perfume", 47.50, 0.15)
puts "Receipt Two"
puts "#{box.item} : $#{box.total}"
puts "#{bottle.item} : $#{bottle.total}"
puts "Sales Tax : $#{box.sales_tax + bottle.sales_tax}"
puts "Total : $#{box.total + bottle.total}"

bottle2 = Receipt.new("Bottle of Perfume", 27.99, 0.15)
bottle3 = Receipt.new("Bottle of Perfume", 18.99, 0.10)
pills = Receipt.new("Packet of Headache Pills", 9.75, 0.0)
box2 = Receipt.new("Box of Chocolates", 11.25, 0.05)

puts "Receipt Three"
puts "#{bottle2.item} : $#{bottle2.total}"
puts "#{bottle3.item} : $#{bottle3.total}"
puts "#{pills.item} : $#{pills.total}"
puts "#{box2.item} : $#{box2.total}"
puts "Sales Tax : $#{(bottle2.sales_tax + bottle3.sales_tax + pills.sales_tax + box2.sales_tax).round(2)}"
puts "Total : $#{bottle2.total + bottle3.total + pills.total + box2.total}"
