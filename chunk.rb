# 1. which people belong to which homes
#    but the 'each loop' only works on successive entries
#    so you end up with Green, Blue, Red, Green, Red groupings

people = [
  { :home => 'Green', :name => 'Alex Green' },
  { :home => 'Green', :name => 'Betty Green' },
  { :home => 'Blue', :name => 'Abe Blue' },
  { :home => 'Blue', :name => 'Bob Blue' },
  { :home => 'Red', :name => 'Arthur Red' },
  { :home => 'Green', :name => 'Cathy Green' },
  { :home => 'Red', :name => 'Brenda Red' },
  { :home => 'Red', :name => 'Collin Red' }
]

people.chunk { |p| p[:home] }.each do |home, person|
  names = person.map { |m| m[:name] }
  puts "#{names} belong(s) to #{home}."
end


# 2. which people belong to which homes
#    divides into Greens and Reds but only cause data set is simple and ordered

people = [
  { :home => 'Green', :name => 'Alex Green' },
  { :home => 'Green', :name => 'Betty Green' },
  { :home => 'Red', :name => 'Arthur Red' },
  { :home => 'Red', :name => 'Brenda Red' },
  { :home => 'Red', :name => 'Collin Red' }
]

people.chunk { |p| p[:home] }.each do |home, person|
  names = person.map { |m| m[:name] }
  puts "#{names} belong(s) to #{home}."
end
