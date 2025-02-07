=== function roman(u3_n)
    // If the number is a decimal like 8.2, there is no Roman representation. Just print the number normally:
    {u3_n % 1 != 0:
        {u3_n}
        ~ return
    }
    // If the number is outside of the supported range (1 to 9999), just print the number normally:
    {u3_n >= 10000 or u3_n <= 0:
        {u3_n}
        ~ return
    }
    //Extract the digits:
    ~ temp u3_m = FLOOR(u3_n / 1000)
    ~ temp u3_c = FLOOR(u3_n / 100) % 10
    ~ temp u3_x = FLOOR(u3_n / 10) % 10
    ~ temp u3_i = u3_n % 10
    //Print the symbols for thousands:
    {u3_m:
        -1: M
        -2: MM
        -3: MMM
        -4: MMMM
        -5: MMMMM
        -6: MMMMMM
        -7: MMMMMMM
        -8: MMMMMMMM
        -9: MMMMMMMMM
    }
    //If the number is finished, exit:
    {u3_c == 0 and u3_x == 0 and u3_i == 0:
        ~ return
    }
    //If we printed any thousands, use an Ink glue token (<>), so that the next letters get appended without a space in between:
    {u3_m != 0: <>}
    //Print the hundreds:
    {u3_c:
        -1: C
        -2: CC
        -3: CCC
        -4: CCCC
        -5: D
        -6: DC
        -7: DCC
        -8: DCCC //You could change this line to CCM if that's the Roman format you prefer.
        -9: CM
    }
    //If finished, exit:
    {u3_x == 0 and u3_i == 0:
        ~ return
    }
    //If we printed any hundreds, print a glue token:
    {u3_c != 0: <>}
    //Print the tens:
    {u3_x:
        -1: X
        -2: XX
        -3: XXX
        -4: XL
        -5: L
        -6: LX
        -7: LXX
        -8: LXXX //You could change this line to XXC if that's the Roman format you prefer.
        -9: XC
    }
    //If finished, exit:
    {u3_i == 0:
        ~ return
    }
    //If we printed any tens, print a glue token:
    {u3_x != 0: <>}
    //Finally, print the ones:
    {u3_i:
        -1: I
        -2: II
        -3: III
        -4: IV
        -5: V
        -6: VI
        -7: VII
        -8: VIII //You could change this line to IIX if that's the Roman format you prefer.
        -9: IX
    }