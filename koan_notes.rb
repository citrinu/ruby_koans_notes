#What i've learned from Ruby Koans

#Objects + Id's
'''
in ruby everything is an object
objects can be converted to strings

each object is assigned a unique id

small integer ids go up by 2s
'''

#Arrays
'''
empty arrays have a size of 0

[-1] index gets the last element
negative index go backwards starting at 1

[0(start), 2[length]]

going 1 past index is empty
2+ is nil
why?????

when working with ranges
... is everything between only doesnt include the last one
negative ending index does not double up, item last item last item
it simmply ends at the end?

unshift adds an element to the front of the array
shift removes and returns the first element

#array assignments
with parallel assignments,extra values get dropped
using the splat operator will capture the extra values

subarray assignment is a thing, kinda cool

first_name, = ["John", "Smith"]
watch out for sneaky commas, second value gets dropped
'''

#Hashes
'''
use fetch if you dont know the key

LEARN TO READ, KeyError was right in front of my face

hash keys/values are stored as arrays
hash pairs have different object ids

<< adds the value to every key pair as the default value
any key will always return that value

when using a block such as this, will set the deafult value to []
'''
hash = Hash.new {|hash, key| hash[key] = [] }
hash[:one] << "uno"

=> #hash rocket, mainly used to define parameters for a function, order of paramters doesnt matter allowing you to skip unused params

link_to "My link", my_path, :confirm => "Are you sure?"

v.s# skips over all the empty params

link_to "My link", my_path, null, null, null, null, "Are you sure?"


#strings
'''
strings are strings regardless of quotations

depending on the quotes that you need in the string, use the opposite
to surround them

\ backslashes are an escape character
\"this is a quote"\

flexible quotes, the final solution to quotes

%("quote")
%!"quote"!
%{"quote"}

string addition
"apple" + "seed"
"apple" += "seed"
"apple" << "seed"


ruby assignment points to a new memory location
ruby appending modifies the original memory location, so anything that
points to that will also change
'''
a = "Test"
b = a
puts a
puts b
a << "test" #appending
puts b
puts a

a += "Testy" #assignment
puts a
puts b

#strings  cont.

'''
cant use escape characters with single quotes
unless escaped twice?
'''

#symbols
'''
constants dont become symbols
symbols can be used with interpolation
'''
val = 5
sym = :"test #{val}"
sym


#regular expressions

#regular expressions are used for searching and matching strings
"find test in this sentence"[/test/]

#regexp will return nil if a match isnt found
"will return nil"[/apple/]

#a ending question mark means not all matches have to be found
"alphabet"[/ab?/] #returns a + b
"alphabet"[/az?/] #returns a only

# + will return one or more matches
#only works on characters in order, left most match takes precedence
"altonnaa"[/an+/] #nil
"altonnaa"[/on+/] #returns onn
"altonnaa"[/n+a+/] #returns nnaa

# * returns zero or more
#if none is found returns ""
"abbcccddddeeeee"[/ab*/] #returns abb
"abbcccddddeeeee"[/z*/] # returns ""

#character classes?
#iterates through the given array, grabs elements beginning with c b or r + ending in at
animals = ["cat", "bat", "rat", "zat"]
animals.select { |a| a[/[cbr]at/] } #returns cat,bat,rat

#selecting digits
"this contains numbers 55"[/0123456789+/]
"this contains numbers 55"[/\d+/] #\d+
"this contains numbers 55"[/[0-9]+/]

#spaces
#grabs everything after the space
"space: \t\n"[/\s+/] #returns _\t\n

#grabs word character class?
"variable_1 = 42"[/\w+/] #returns variable_1

# a period grabs anything before a newline
"abc\n123"[/a.+/]

#a character type can be negated
"the number is 42"[/[^0-9]+/] #returns everyhing but the  numbers

#shortcuts are negated with capitals
[/\D/]
[/\S/]
[/\W/]
#this only skips all words and numbers, only returning the spaces and equals sign
"variable_1 = 42"[/\W+/] #returns " = "

#anchoring to the start of a string
[/\Aword/]
[/^\/word/]
"start end"[/\Astart/] #only returns "start"
#anchoring to the end of a string
[/word\z/]
[/word$/]
"start end"[/end\z/] #only returns "end"
"start end"[/start\z/] #re turns nils

#specific word anchor
#skips bovine as its a full words
#starts at vines
"bovine vines"[/\bvine./] #returns vines

#grouping
#searches and returns a pair of characters
[/(ab)+/]
[/(\w+), (\w+)/, 1] # can take a optional number param

#regexp get assigned to special variables
$1
$2

#vertical pipes can be used as or operator
#can take a number param
grays = /(James|Dana|Summer) Gray/
"James Gray"[grays] #returns James Gray

.scan(/\w+/) #returns all found words
.sub() is find and replace to swap words
.gsub() is find and replace all instances
