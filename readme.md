A collection of useful Ink functions that can be used in any story.

Full version: contains all functions, including all functions with variable argument length up to 20 arguments.

Small version: no functions with variable argument length, small size.

Usage: INCLUDE inkutils.ink

# Functions

## random_without(from, to, excluding)

Returns a random number in a range, excluding one number.

~ x = random_without(1, 5, 3)

Now x will be a number between 1 and 5, excluding 3 (so: 1, 2, 4 or 5).

(Note: If you pass the exact same number for all three parameters (for example: "random_without(2, 2, 2)"), there is no reasonable result to return, so we just return the number (2))
  
## min(number1, number2)

Returns the smaller of two numbers.

~ x = min (13, 2)

Assigns 2 to x because it's smaller than 13.

## max(number1, number2)

Returns the bigger of two numbers.
  
~ x = max (13, 2)

Assigns 13 to x because it's bigger than 2.

## swap(variable1, variable2)

Swaps the values of two variables.

~ swap(a, b)
  
Now a holds the value of b and b holds the value of a.

## pick2 ... pick20

Returns one of its arguments at random.

~ x = pick3(1, 5, 7)

Returns either 1, 5 or 7 

She seems {pick7("busy", "tired", "angry", "annoyed", "happy", "sad", "concerned")}.

(Hint: if you have, say, eight parameters but you use pick7, Inky will tell you that there are eight parameters, so you do not need to count them yourself.)

## alter(variable, value)

Increases the value of a variable.

While you could, of course just do:

  ~ health += 10

this function allows you to change variables inline. Example from the official Ink docs:

* 	I gave a biscuit to Monsieur Fogg[] and he wolfed it down most undecorously. {alter(foggs_health, 1)}

(Hint: to decrease, use a negative value: alter(gold, -10))

## alter_mult(variable, value)

Like alter, but multiplies the variable.

  ~ charisma = 7
  ~ alter(charisma, 3)

"charisma" is 21 now.

## alter_div(variable, value)

Like alter, but divides the variable.

  ~ charisma = 12
  ~ alter(charisma, 3)

"charisma" is 4 now.

