=== function random_without(u3_from, u3_to, u3_without)
    {u3_from == u3_to:
        ~ return u3_from
    }
    {u3_to < u3_from:
        ~ temp u3_swap = u3_to
        ~ u3_to = u3_from
        ~ u3_from = u3_swap
    }
    {u3_without < u3_from or u3_without > u3_to:
        ~ return RANDOM(u3_from, u3_to)
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

=== function round(u3_x)
    {u3_x < 0:
        {FLOOR(u3_x) + 1 - u3_x < 0.5:
            ~ return FLOOR(u3_x) + 1
        }
        ~ return FLOOR(u3_x)
    }
    ~ return FLOOR(u3_x + 0.5)

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

=== function raise(ref u3_x, u3_p)
    ~ u3_p = abs(u3_p)
    ~ u3_x = round(u3_x + (100 - u3_x) * (FLOAT(u3_p) / 100))
    {u3_x > 100:
        ~ u3_x = 100
    }

=== function lower(ref u3_x, u3_p)
    ~ u3_p = abs(u3_p)
    ~ u3_x = round(u3_x - u3_x * (FLOAT(u3_p) / 100))
    {u3_x < 0:
        ~ u3_x = 0
    }
    
=== function chance(u3_x)
    ~ return RANDOM(1, 100) <= u3_x
    