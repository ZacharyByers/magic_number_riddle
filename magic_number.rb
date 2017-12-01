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
  human_number = number.humanize.split('').reject { |num| num == '-' || num == ',' }
  if human_number.length == 4
    puts "#{number} is #{human_number.length}, and 4 is the magic number.".green
    user_input
  else
    puts "#{number} is #{human_number.length}".yellow
    magic_number(human_number.length)
  end
end

user_input
