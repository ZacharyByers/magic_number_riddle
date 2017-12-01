require 'pry'
require 'humanize'
require 'colorize'

def user_input
  puts "Input any positive number, or type quit.".yellow
  input = gets.strip.downcase
  if input == 'quit'
    puts "Adios amigo".cyan
    exit 0
  else
    magic_number(input)
  end
end

def magic_number(input)
  number = input.to_i.abs
  first_number = input.to_i.abs.humanize.split('')
  first_number.reject! { |num| num == '-' || num == ',' }
  if first_number.length == 4
    puts "#{number} is #{first_number.length}, and 4 is the magic number.".green
    user_input
  else
    puts "#{number} is #{first_number.length}".yellow
    magic_number(first_number.length)
  end
end

user_input
