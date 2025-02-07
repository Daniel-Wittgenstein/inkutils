INCLUDE ../src/standard.ink
INCLUDE ../src/roman.ink
INCLUDE ../src/pronouns.ink
INCLUDE ../src/random.ink


~ temp count = 100
~ temp x = 0
~ temp a = 0
~ temp b = 0
~ temp txta = ""
~ temp txtb = ""

- (back1)
~ x = random_without(1, 5, 3)
random_without {x}
random_without {x} {x == 3: Result should never be 3.}
~ count--
{count <= 0:
    -> continue1
}

-> back1
- (continue1)






{round(-1.49)}
\-1
{round(-1.5)}
\-2
{round(-1.51)}
\-2
{round(0)}
0
{round(-0.499)}
0
{round(-0.5)}
\-1
{round(-0.51)}
\-1
{round(1)}
1
{round(2.2)}
2
{round(2.8)}
3
{round(17.01)}
17
{round(4.49)}
4
{round(4.5)}
5
{round(4.51)}
5


min {min(1, 13)}
min 1

min {min(5, 2)}
min 2

min {min(103, 217)}
min 103

min {min(18, -2)}
min -2

max {max(157, -3)}
max 157

max {max(8, 10004)}
max 10004

max {max(10, 10)}
max 10

~ a = 3
~ b = 7
{swap(a, b)}

swap {a}
swap 7

swap {b}
swap 3

~ txta = "world"
~ txtb = "hello"
{swap(txta, txtb)}

swap {txta} {txtb}
swap hello world

abs {abs(-9)}
abs 9

abs {abs(15)}
abs 15


~ count = 100
- (back2)
~ x = pick3(1, 2, 4)
~ a = pick10(1, 2, 3, 4, 5, 6, 8, 9, 11, 17)
{x!= 1 and x!= 2 and x != 4:
    Error. Expected 1, 2 or 4.
    pick3
}

{a == 7 or a == 10 or a <= 0 or a >= 18 or (a >= 12 and a <= 16):
    Error. Expected 1, 2, 3, 4, 5, 6, 8, 9, 11 or 17
    pick10
}
~ count--
{count <= 0:
    -> continue2
}
-> back2

- (continue2)

~ a = 0
~ alter(a, 10)
{a}
10
~ alter(a, -17)
{a}
\-7
~ a = 24
~ alter_mult(a, 3)
{a}
72
~ alter_div(a, 4)
{a}
18

{number_as_word(-1)}, {number_as_word(0)}, {number_as_word(1)}, {number_as_word(2)}, {number_as_word(3)}, {number_as_word(4)}, {number_as_word(5)}, {number_as_word(6)}, {number_as_word(7)}, {number_as_word(8)}, {number_as_word(9)}, {number_as_word(10)}, {number_as_word(11)}

\-1, zero, one, two, three, four, five, six, seven, eight, nine, 10, 11


{They} look{s} at {themselves} - at {their} own reflection. The reflection looks back at {them}.
They look at themselves - at their own reflection. The reflection looks back at them.

~ init_character(1, "she")
~ init_character(2, "he")
~ init_character(3, "it")
~ init_character(4, "themselves")
~ init_character(5, "themself")
~ init_character(6, "you")

{They2} look{s2} at {themselves2} - at {their2} own reflection. The reflection looks back at {them2}.
He looks at himself - at his own reflection. The reflection looks back at him.

{They} look{s} at {themselves} - at {their} own reflection. The reflection looks back at {them}.
She looks at herself - at her own reflection. The reflection looks back at her.

{They3} look{s3} at {themselves3} - at {their3} own reflection. The reflection looks back at {them3}.
It looks at itself - at its own reflection. The reflection looks back at it.

{They6} look{s6} at {themselves6} - at {their6} own reflection. The reflection looks back at {them6}.
You look at yourself - at your own reflection. The reflection looks back at you.

{They5} look{s5} at {themselves5} - at {their5} own reflection. The reflection looks back at {them5}.
They look at themself - at their own reflection. The reflection looks back at them.

{They4} look{s4} at {themselves4} - at {their4} own reflection. The reflection looks back at {them4}.
They look at themselves - at their own reflection. The reflection looks back at them.


~ init_character(1, "she")
~ init_character(2, "he")
~ init_character(3, "it")
~ init_character(4, "themselves")
~ init_character(5, "themself")
~ init_character(6, "you")

It's {theirs}.
It's hers.

It's {theirs6}.
It's yours.

{gend("man", "woman", "person")}
woman

{gend2("man", "woman", "person")}
man

{gend4("man", "woman", "person")}
person

{gend5("man", "woman", "person")}
person

~ x = 10
~ lower(x, 20)
{x}
8

~ x = 10
~ lower(x, -20)
{x}
8

~ x = 50
~ lower(x, 20)
{x}
40

~ x = 90
~ lower(x, 20)
{x}
72

~ x = 10
~ raise(x, 20)
{x}
28

~ x = 50
~ raise(x, 20)
{x}
60

~ x = 90
~ raise(x, 20)
{x}
92

~ x = 1
~ lower(x, 40)
{x}
1

~ x = 99
~ raise(x, 40)
{x}
99

~ x = 1
~ lower(x, 10000)
{x}
0

~ x = 1
~ raise(x, 10000)
{x}
100


~ x = 60
~ raise(x, 25)
{x}
70

~ temp count_taiga = 0
~ count = 100
- (back_bucket_random)
~ count --
~ temp xx = bucket_random14("50%", "forest", "plains", "hills", "mountains", "30%", "swamp", "high mountains", "marshland", "18%", "tropical rain forest", "tundra", "2%", "Taiga")

{xx == "Taiga":
    ~ count_taiga++
    {count_taiga >= 15:
        back_bucket error
        error!
    }
}

{count > 0:
    -> back_bucket_random
}


~ roman(7694)
MMMMMMMDCXCIV

~ roman(768)
DCCLXVIII

~ roman(10000) //out of range
10000

~ roman(0) //out of range
0

~ roman(-5) //out of range negative
\-5

~ roman(2000) //only thousands
MM

~ roman(300) //only hundreds
CCC

~ roman(80) //only tens
LXXX

~ roman(3) //only ones
III

~ roman(3007) //thousands and ones
MMMVII

~ roman(2001)
MMI

~ roman(7040) //thousands and tens
MMMMMMMXL

~ roman(5200) //thousands and hundreds
MMMMMCC

~ roman(203) //hundreds and ones
CCIII

~ roman(29) //tens and ones
XXIX




~ count = 100
- (backb2)
~ x = random_without(4, 5, 5)
random_without {x}
random_without {x} {x != 4: Result should always be 4.}
~ count--
{count <= 0:
    -> continueb2
}

-> backb2
- (continueb2)




