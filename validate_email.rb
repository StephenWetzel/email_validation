# frozen_string_literal: true

require 'email_address'
require 'colorize'

# email_address = gets

def prompt(*args)
  print(*args)
  input = gets
  return input.chomp
end

puts "Enter 'exit' to end"

email_address = prompt "\nEnter email address: "
while email_address != 'exit'
  if EmailAddress.valid?(email_address)
    puts "#{email_address} is valid".green
    puts "Normalized address: #{EmailAddress.normal(email_address)}"
    puts "Canonical address:  #{EmailAddress.canonical(email_address)}"
  else
    puts "#{email_address} is not valid".red
    puts "Error: #{EmailAddress.error(email_address)}"
  end
  email_address = prompt "\nEnter email address: "
end
