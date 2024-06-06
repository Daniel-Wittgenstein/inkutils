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
  
## min

Returns the smaller of two numbers.

~ x = min (13, 2)

Assigns 2 to x because it's smaller than 13.

## max

Returns the bigger of two numbers.
  
~ x = max (13, 2)

Assigns 13 to x because it's bigger than 2.

## swap

Swaps the values of two variables.

~ swap(a, b)
  
Now a holds the value of b and b holds the value of a.

## pick2 ... pick20

Returns one of its arguments at random.

~ x = pick3(1, 5, 7)

Returns either 1, 5 or 7 

She seems {pick7("busy", "tired", "angry", "annoyed", "happy", "sad", "concerned")}.

