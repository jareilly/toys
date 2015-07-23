#
# 1. partition into Green and Red homes
#


people = [
  { :home => 'Green', :name => 'Alex Green' },
  { :home => 'Green', :name => 'Betty Green' },
  { :home => 'Red', :name => 'Arthur Red' },
  { :home => 'Red', :name => 'Brenda Red' },
  { :home => 'Red', :name => 'Collin Red' }
]

greens, reds = people.partition { |person| person[:home] == 'Green' }

puts(greens)
puts(reds)


#
# 2. partition into Green and Red homes, but Blue isn't Green so is partitioned as Red
#

people = [
  { :home => 'Green', :name => 'Alex Green' },
  { :home => 'Green', :name => 'Betty Green' },

  { :home => 'Blue', :name => 'Abe Blue' },

  { :home => 'Red', :name => 'Arthur Red' },
  { :home => 'Green', :name => 'Cathy Green' },
  { :home => 'Red', :name => 'Brenda Red' },
  { :home => 'Red', :name => 'Collin Red' }
]

greens, not_greens = people.partition { |person| person[:home] == 'Green' }

puts(greens)
puts(not_greens)