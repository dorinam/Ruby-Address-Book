#Made by Dorina Mihai

require "./phone_number"
require "./address"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses
  
  def initialize
    @phone_numbers = []
    @addresses = []
  end
  
  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end
  
  def add_address(kind, street_1, street_2, city, state, postal_code)
    address = Address.new
    address.kind = kind
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.postal_code = postal_code
    addresses.push(address)
  end
  
  def first_name
    @first_name
  end
  
  def middle_name
    @middle_name
  end
  
  def last_name
    @last_name
  end
  
  def first_last
    first_name + " " + last_name
  end
  
  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0, 1)
      last_first += "."
    end
    last_first
  end
  
  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end
  
  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
  
  def print_phone_numbers
    puts "Phone Numbers"
    phone_numbers.each { |phone_number| puts phone_number }
  end
  
  def print_addresses
    puts "Addresses"
    addresses.each { |address| puts address.to_s('short') }
  end
end

  dorina = Contact.new
  dorina.first_name = "Dorina"
  dorina.last_name = "Mihai"
  dorina.add_phone_number("Home", "1234-56-7890")
  dorina.add_phone_number("Work", "4567-89-0123")
  dorina.add_address("Home", "123 Main St.", "", "California", "OR", "12345")
  puts dorina.to_s('full_name')
  dorina.print_phone_numbers
  dorina.print_addresses
  
  luis = Contact.new
  luis.first_name = "Luis"
  luis.last_name = "Michaels"
  luis.add_phone_number("Home", "0234-56-7890")
  luis.add_phone_number("Work", "3567-89-0123")
  luis.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")
  puts luis.to_s('full_name')
  luis.print_phone_numbers
  luis.print_addresses

  emillie = Contact.new
  emillie.first_name = "Emillie"
  emillie.middle_name = "A"
  emillie.last_name = "Mair"
  emillie.add_phone_number("Home", "0434-56-7890")
  emillie.add_phone_number("Work", "3567-89-0123")
  emillie.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")
  puts emillie.to_s('first_last')
  emillie.print_phone_numbers
  emillie.print_addresses

  grayson = Contact.new
  grayson.first_name = "Grayson"
  grayson.last_name = "Browne"
  grayson.add_phone_number("Home", "0234-56-7890")
  grayson.add_phone_number("Work", "3567-89-0123")  
  grayson.add_address("Home", "123 Main St.", "", "California", "OR", "12345")
  puts grayson.to_s('full_name')
  grayson.print_phone_numbers
  grayson.print_addresses


  alicia = Contact.new
  alicia.first_name = "Alicia"
  alicia.last_name = "Barron"
  alicia.add_phone_number("Home", "0234-56-7890")
  alicia.add_phone_number("Work", "3567-89-0123")
  alicia.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")
  puts alicia.to_s('full_name')
  alicia.print_phone_numbers
  alicia.print_addresses


  joseph = Contact.new
  joseph.first_name = "Joseph"
  joseph.middle_name = "Ewan"
  joseph.last_name = "Woods"
  joseph.add_phone_number("Home", "0234-56-7890")
  joseph.add_phone_number("Work", "3567-89-0123")
  joseph.add_address("Home", "123 Main St.", "", "California", "OR", "12345")
  puts joseph.to_s('first_last')
  joseph.print_phone_numbers
  joseph.print_addresses

