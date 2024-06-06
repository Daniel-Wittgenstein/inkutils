INCLUDE ../dist/inkutils-all.ink

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

swap {abs(-9)}
swap 9

swap {abs(15)}
swap 15


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












