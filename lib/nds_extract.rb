$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

director_names = []
director_grosses = []

for i in nds
  director_grosses.push(0)
  i.each do |key, value|
    if key == :name
      director_names.push(value)
    end
  end
end
#the previous loop appends the :name of each director in the database array of hashes into the "directors_names" array and creates a placeholder for their gross value in the director_grosses array. The following will modify said grosses array. This could all probably be done in one big array but I'm keeping it simple for readability and my own sanity.

counter = 0
  for i in nds
    for n in i[:movies]
      director_grosses[counter]+=n[:worldwide_gross]
    end
    counter+=1
  end
#the above loop adjusts the gross values stored in the director_grosses array. Each element of this array coincides with the director at the same index of the director_names array. Now it's just a matter of splicing them together into a hash.


counterTwo=0
directors=Hash.new
for i in director_names
directors[i]=director_grosses[counterTwo]
counterTwo+=1
end
  puts directors
  return directors
#this splices them together in a new hash. Directors[i] will always be the name at whatever index it's looping through in director_names, and it should equal the same index at director_grosses, as the counter starts at index 0 and increases by 1 every loop.
    

#I have this working in a different IDE exactly as is and it won't work in this one for some reason. I keep getting a nilerror and I'm not sure why. I'll solve it tomorrow.
#update: stayed up late, pretty printing each thing in this console. The nil class error that it said it couldn't use the plus operator on that it kept pointing to pretty printed as an integer every time, on both sides of the + sign. Eventually just recopied my code from the other ide and repasted it here, and then realized that it was the 'end' already written for me at the bottom of this lesson throwing things off. I probably should have realized that earlier but I'm still learning.l

  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
