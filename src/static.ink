=== function random_without(u3_from, u3_to, u3_without)
    {u3_from == u3_to:
        ~ return u3_from
    }
    {u3_to < u3_from:
        ~ swap(u3_to, u3_from)
    }
    ~ temp u3_x = RANDOM(u3_from, u3_to - 1)
    {u3_x >= u3_without:
        ~ u3_x++
    }
    ~ return u3_x

=== function min(u3_a, u3_b)
    {u3_a < u3_b:
        ~ return u3_a
    }
    ~ return u3_b

=== function max(u3_a, u3_b)
    {u3_a > u3_b:
        ~ return u3_a
    }
    ~ return u3_b
    
=== function swap(ref u3_a, ref u3_b)
    ~ temp u3_c = u3_a
    ~ u3_a = u3_b
    ~ u3_b = u3_c

=== function abs(u3_a)
    {u3_a < 0:
        ~ return -u3_a
    }
    ~ return u3_a

=== function alter(ref u3_x, u3_d) ===
	~ u3_x += u3_d

=== function alter_mult(ref u3_x, u3_d) ===
	~ u3_x = u3_x * u3_d

=== function alter_div(ref u3_x, u3_d) ===
	~ u3_x = u3_x / u3_d

=== function number_as_word(u3_x)
    {u3_x:
        - 0: ~ return "zero"
        - 1: ~ return "one"
        - 2: ~ return "two"
        - 3: ~ return "three"
        - 4: ~ return "four"
        - 5: ~ return "five"
        - 6: ~ return "six"
        - 7: ~ return "seven"
        - 8: ~ return "eight"
        - 9: ~ return "nine"
        - else: ~ return u3_x 
    }

=== function roman(u3_n)
    {u3_n % 1 != 0:
        {u3_n}
        ~ return
    }
    {u3_n >= 10000 or u3_n <= 0:
        {u3_n}
        ~ return
    }
    ~ temp u3_m = FLOOR(u3_n / 1000)
    ~ u3_n -= u3_m * 1000
    ~ temp u3_c = FLOOR(u3_n / 100)
    ~ u3_n -= u3_c * 100
    ~ temp u3_x = FLOOR(u3_n / 10)
    ~ u3_n -= u3_x * 10
    ~ temp u3_i = u3_n
    {u3_m:
        -1: M<>
        -2: MM<>
        -3: MMM<>
        -4: MMMM<>
        -5: MMMMM<>
        -6: MMMMMM<>
        -7: MMMMMMM<>
        -8: MMMMMMMM<>
        -9: MMMMMMMMM<>
    }
    {u3_c:
        -1: C<>
        -2: CC<>
        -3: CCC<>
        -4: CCCC<>
        -5: D<>
        -6: DC<>
        -7: DCC<>
        -8: DCCC<>
        -9: CM<>
    }
    {u3_x:
        -1: X<>
        -2: XX<>
        -3: XXX<>
        -4: XL<>
        -5: L<>
        -6: LX<>
        -7: LXX<>
        -8: LXXX<>
        -9: XC<>
    }
    {u3_i:
        -1: I
        -2: II
        -3: III
        -4: IV
        -5: V
        -6: VI
        -7: VII
        -8: VIII
        -9: IX
    }
