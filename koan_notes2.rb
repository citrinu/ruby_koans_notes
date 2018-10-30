#methods
'''
methods can be global
also called a subroutine/class-less method?
() can be optional

supplying the wrong number of arguments throws an error, not sure what was trying to be shown here

splat operator accepts any amount of arguments, turns into an array?

an explicit return trumps any ending line

private methods cant be called with  defined receiver?
results in a NoMethodError
'''

#Keyword arguments
'''
return an array + array class
to reassign a keyword arugment, use the Keyword
'''
def key_word(one: "apple", two: "orange")
  [one, two]
end

key_word(one: "orange")

#constants
'''
constants still have scope
nested constants are relative
top level class constants can be accessed with double colons
::CONSTANT

nested classes inherit constants
subclasses alsos inherit constants

nested constants override inherited constants
'''
class Animal
  LEGS = 2
end


class MyAnimals
  LEGS = 10
    class Centi  < Animal
      def legs_in_centi
        LEGS
      end

    end
end

puts MyAnimals::Centi.new.legs_in_centi #returns 10

'''
dont write code that depends on scoping vs inheritance
explicit scoping on class definition, ruby lexical scope -> inheritance scope, so the lexical scope is of the inherited class, so bird inherits from animal
'''
class MyAnimals::Bird < Animal
  def legs_in_bird
    LEGS
  end
end

puts MyAnimals::Bird.new.legs_in_bird

#control statements
'''
variables can be assigned an entire if/else statement
'''
def madness
  statement = if true
    "This is stored inside statement"
  end

  puts statement
end
madness()

'''
no else + false = nil return
'''

unless false # basically a if true
unless true # if false

'''
ruby has no built in factorial method, instead use math.gamma(n+1)

a next statement skips the next evaluation and will go back to the top of the loop 
'''
