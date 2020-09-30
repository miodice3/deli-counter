# Write your code here.
require 'pry'

katz_deli = [] 


#Remember that people like to count from 1, not from 0 ("zero") like computers.
def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
    return katz_deli
end

#shows everyone their current place in the line. If there is nobody in line, it should say "The line is currently empty.".
def line(katz_deli)
    size = katz_deli.size
    if size == 0
        puts "The line is currently empty."
    else
    counter = 1
    string_line = "The line is currently:"
        katz_deli.each do |name|
            string_line <<  " #{counter}. #{name}"
            counter += 1
        end
        puts string_line

    end
end

#should call out (i.e. puts) the next person in line and then remove them from the front. If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".
def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        serving = katz_deli.shift 
        puts "Currently serving #{serving}."
    end
end