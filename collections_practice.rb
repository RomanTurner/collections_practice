
require 'pry'
def sort_array_asc(arr)
    arr.sort
end

def sort_array_desc(arr)
    arr.sort {|low, high| high <=> low}
end


def sort_array_char_count(arr)
  arr.sort{|low, high| low.length <=> high.length}
end

def swap_elements(arr, x , y)
    #gonna have to get used to how this destructuring looks 
    arr[x], arr[y] = arr[y], arr[x]
    arr
end 

def reverse_array(arr)
  arr.reverse
end

def kesha_maker(arr)
  arr.each {|k| k[2] = "$"}
end

def find_a(arr)
  arr.select {|word| word[0] == "a"}
end

def sum_array(arr)
    arr.reduce(0) { |sum, num| sum + num }
end

def add_s(arr)
arr.inject([]) do |result, el|
    el += "s" if el != arr[1]
    result << el 
end 
end

def add_s_two(arr)
    arr.each_with_index.collect{|el, index| index != 1? (el+="s"): el}
end