dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  p "Here is the list of cities. Do you wish to continue and find out an area code? Type Y/N to continue"
  input = gets.chomp.downcase
  break if input == "n"
  p "Which city do you want the area code for?"
  p get_city_names(dial_book)
  p "Enter your selection: "
  selection = gets.chomp
  if dial_book.include?(selection)
    p "The area code for #{selection} is #{get_area_code(dial_book, selection)}"
  else
    p "Your entry was invalid"
  end
  p "If you wish to exit, type exit"
  done = gets.chomp.downcase
  if done == "exit"
    break
  end

end
