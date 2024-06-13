A collection of useful [ink](https://www.inklestudios.com/ink/) functions that can be used in any story.

License: [MIT license](https://github.com/Daniel-Wittgenstein/inkutils/blob/main/license.md)
or [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/deed.en). Choose whichever you prefer.


# Ink files: (Right-click -> "Save as Link" 😄)

[standard.ink: Standard Functions](https://raw.githubusercontent.com/Daniel-Wittgenstein/inkutils/main/src/standard.ink)

[pronouns.ink: Pronoun Handling](https://raw.githubusercontent.com/Daniel-Wittgenstein/inkutils/main/src/pronouns.ink)

[roman.ink: Roman Numbers](https://raw.githubusercontent.com/Daniel-Wittgenstein/inkutils/main/src/roman.ink)

[random.ink: Additional Random Functions](https://raw.githubusercontent.com/Daniel-Wittgenstein/inkutils/main/src/random.ink)

Usage:

INCLUDE standard.ink

INCLUDE pronouns.ink

etc.

# standard.ink

### swap(variable1, variable2)

Swaps the values of two variables.

```
~ swap(a, b)
```

Now a holds the value of b and b holds the value of a.

### alter(variable, value)

Increases the value of a variable.

While you could, of course just do:

```
  ~ health += 10
```

this function allows you to change variables inline. Example from the official Ink docs:

```
  \* I gave a biscuit to Monsieur Fogg[] and he wolfed it down most undecorously. {alter(foggs_health, 1)}
```

(Hint: to decrease a variable you can, of course, use a negative value: alter(gold, -10))

### alter_mult(variable, value)

Like alter, but multiplies the variable.


```
~ charisma = 7
~ alter_mult(charisma, 3)
```

"charisma" is 21 now.

### alter_div(variable, value)

Like alter, but divides the variable.

```
~ charisma = 12
~ alter_div(charisma, 3)
```

"charisma" is 4 now.

### min(number1, number2)

Returns the smaller one of two numbers.

```
~ x = min (13, 2)
```

Assigns 2 to x because it's smaller than 13.

### max(number1, number2)

Returns the bigger one of two numbers.
  
```
~ x = max (13, 2)
```

Assigns 13 to x because it's bigger than 2.

### round(number)

Rounds a number.

```
~ x = round(3.5)
```

x is 4 now.

```
~ x = round(3.2)
```

x is 3 now.

Beware of floating point math, though:

```
~ x = round(4.4999999)
```

x is 5 (!) now.

(Basically, floating point numbers are only precise up to a certain digit after the comma
and 4.4999999 is interpreted as 4.5 which rounds up to 5.)

### abs(number)

Returns the absolute value of the number.

```
~ x = abs(7)
```

x is 7 now.

```
~ x = abs(-15)
```

x is 15 now.

### minus(variable, number)

Decreases the value of variable by "number" percent.

```
~ x = 60
~ minus(x, 25)
```

25% of 60 = 15, so x gets decreased by 15 and ends up being 45.

### plus(variable, number)

Calculates the difference between 100 and the variable value and increases the variable value by "number" percent of that amount.

```
~ x = 60
~ plus(x, 25)
```

The difference between 100 and 60 is 40. 25% of 40 is 10, so x gets
increased by 10 and ends up being 70.

The "plus" and "minus" functions are modeled after [ChoiceScript](https://www.choiceofgames.com/make-your-own-games/choicescript-intro/)'s ["Fairmath"](https://choicescriptdev.fandom.com/wiki/Arithmetic_operators#Fairmath) operators. They guarantee that the value always stays between 0 and 100 and that it's harder to reach more extreme values (very high or very low values).

### random_without(from, to, excluding)

Returns a random number in a range, excluding one number.

```
~ x = random_without(1, 5, 3)
```

Now x will be a number between 1 and 5, excluding 3 (so: 1, 2, 4 or 5).

(Note: If you pass the exact same number for all three parameters (for example: "random_without(2, 2, 2)"), there is no reasonable result to return, so we just return the number (2))

### number_as_word(number)

Returns the number as an English word if it's between 0 and 9, otherwise returns the number.

```
{number_as_word(7)}, {number_as_word(8)}, {number_as_word(9)}, {number_as_word(10)}, {number_as_word(11)}
```

Will print: "seven, eight, nine, 10, 11"

# pronouns.ink
These are functions (and some global variables) that can be used to set and print a
character's pronouns and related stuff.

###  Setting and Printing Pronouns
You can set pronouns for up to 6 virtual characters using the **init_character** function:

```
~ init_character(1, "he") //the first character has he/him pronouns

~ init_character(2, "she") //the second character has she/her pronouns

~ init_character(6, "themselves") //the sixth character has they/them/themselves pronouns

~ init_character(5, "themself") //the fifth character has they/them/themself pronouns

~ init_character(3, "you") //etc.

~ init_character(4, "it") 
```

After the character pronouns are initialized, you can do this:

```
{They} look{s} at {themselves} - at {their} own reflection. The reflection looks back at {them}.
```

This will print one of the following (depending on the pronouns you set for the first character):

* He looks at himself - at his own reflection. The reflection looks back at him.

* She looks at herself - at her own reflection. The reflection looks back at her.

* It looks at itself - at its own reflection. The reflection looks back at it.

* You look at yourself - at your own reflection. The reflection looks back at you.

* They look at themselves - at their own reflection. The reflection looks back at them.

* They look at themself - at their own reflection. The reflection looks back at them.

For the second character, you would use:

```
{They2} look{s2} at {themselves2} - at {their2} own reflection. The reflection looks back at {them2}.
```

etc.

Note that {they} will lower-case the pronoun and {They} will upper-case it. This works for all pronouns.

Also note that only {they}, {them} etc. are allowed for printing, because it's the only pronoun with no ambiguous forms. These are all the variables you can use:

they, them, their, theirs, themselves (or themself), s

(Hint: You can also call "init_character" in the middle of the story and change a character's pronouns.)

### gend(male, female, neutral) ... gend6(male, female, neutral)

This function returns the first string if "he/him" pronouns have been set for the character,
the second string if "she/her" pronouns have been set for the character,
and the third string if "they/them" pronouns have been set for the character.

```
~ init_character("she")

The {gend("man", "woman", "person")} takes {their} purse.
```

Prints: "The woman takes her purse."

```
~ init_character2("he")

The {gend2("man", "woman", "person")} takes {their2} purse.
```

Prints: "The man takes his purse."

```
~ init_character3("themself")

The {gend3("man", "woman", "person")} takes {their3} purse.
```

Prints: "The person takes their purse."

# roman.ink

### roman(number)

Prints the number as a Roman numeral.

```
~ roman(7694)
```

Will print "MMMMMMMDCXCIV".

Note 1: Only integer numbers between 1 and 9999 will be printed as Roman numerals. All other numbers are just printed in standard numerals.

Note 2: There have been different ways to write Roman numbers throughout history. This function prints
the number 8 as VIII, not as IIX, the number 80 as LXXX, not as XXC, etc.

Note 3: You cannot assign the Roman number to a variable, you can only print it.

# random.ink

(This file is pretty big due to variable argument length functions.)

### pick2 ... pick20

Returns one of its arguments at random.

```
~ x = pick3(1, 5, 7)
```

Returns either 1, 5 or 7 

She seems {pick7("busy", "tired", "angry", "annoyed", "happy", "sad", "concerned")}.

(Hint: if you have, say, eight parameters but you use pick7, Inky will tell you that there are eight parameters, so you do not need to count them yourself.)

### bucket_random4 ... bucket_random20

```
~ x = bucket_random15("50%", "forest", "plains", "hills", "mountains", "30%", "swamp", "high mountains", "marshland", "18%", "tropical rain forest", "tundra", "2%", "Taiga", "Maquis shrubland")
```

In 50% of cases, x will be assigned either "forest", "plains", "hills" or "mountains" (at random),
in 30% of cases, x will be assigned either "swamp", "high mountains" or "marshland" (at random) etc.

The numbers must be integers and must add up to exactly 100%, otherwise you will get an ink error.

Note: bucket_random can only return random strings, not numbers