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