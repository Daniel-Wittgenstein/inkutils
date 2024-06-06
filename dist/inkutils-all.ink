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


=== function pick2(u3_1, u3_2)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	}

=== function pick3(u3_1, u3_2, u3_3)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	}

=== function pick4(u3_1, u3_2, u3_3, u3_4)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	}

=== function pick5(u3_1, u3_2, u3_3, u3_4, u3_5)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	}

=== function pick6(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	}

=== function pick7(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	}

=== function pick8(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	}

=== function pick9(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	}

=== function pick10(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	}

=== function pick11(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	}

=== function pick12(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	}

=== function pick13(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	}

=== function pick14(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	}

=== function pick15(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	}

=== function pick16(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15, u3_16)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	-
	~ return u3_16
	}

=== function pick17(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15, u3_16, u3_17)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	-
	~ return u3_16
	-
	~ return u3_17
	}

=== function pick18(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15, u3_16, u3_17, u3_18)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	-
	~ return u3_16
	-
	~ return u3_17
	-
	~ return u3_18
	}

=== function pick19(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15, u3_16, u3_17, u3_18, u3_19)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	-
	~ return u3_16
	-
	~ return u3_17
	-
	~ return u3_18
	-
	~ return u3_19
	}

=== function pick20(u3_1, u3_2, u3_3, u3_4, u3_5, u3_6, u3_7, u3_8, u3_9, u3_10, u3_11, u3_12, u3_13, u3_14, u3_15, u3_16, u3_17, u3_18, u3_19, u3_20)
	{ shuffle:
	-
	~ return u3_1
	-
	~ return u3_2
	-
	~ return u3_3
	-
	~ return u3_4
	-
	~ return u3_5
	-
	~ return u3_6
	-
	~ return u3_7
	-
	~ return u3_8
	-
	~ return u3_9
	-
	~ return u3_10
	-
	~ return u3_11
	-
	~ return u3_12
	-
	~ return u3_13
	-
	~ return u3_14
	-
	~ return u3_15
	-
	~ return u3_16
	-
	~ return u3_17
	-
	~ return u3_18
	-
	~ return u3_19
	-
	~ return u3_20
	}

