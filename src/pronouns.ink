VAR they = "they"
VAR them = "them"
VAR their = "their"
VAR theirs = "theirs"
VAR themselves = "themselves"
VAR themself = "themselves"
VAR They = "They"
VAR Them = "Them"
VAR Their = "Their"
VAR Theirs = "Theirs"
VAR Themselves = "Themselves"
VAR Themself = "Themselves"
VAR s = ""

VAR they2 = "they"
VAR them2 = "them"
VAR their2 = "their"
VAR theirs2 = "theirs"
VAR themselves2 = "themselves"
VAR themself2 = "themselves"
VAR They2 = "They"
VAR Them2 = "Them"
VAR Their2 = "Their"
VAR Theirs2 = "Theirs"
VAR Themselves2 = "Themselves"
VAR Themself2 = "Themselves"
VAR s2 = ""

VAR they3 = "they"
VAR them3 = "them"
VAR their3 = "their"
VAR theirs3 = "theirs"
VAR themselves3 = "themselves"
VAR themself3 = "themselves"
VAR They3 = "They"
VAR Them3 = "Them"
VAR Their3 = "Their"
VAR Theirs3 = "Theirs"
VAR Themselves3 = "Themselves"
VAR Themself3 = "Themselves"
VAR s3 = ""

VAR they4 = "they"
VAR them4 = "them"
VAR their4 = "their"
VAR theirs4 = "theirs"
VAR themselves4 = "themselves"
VAR themself4 = "themselves"
VAR They4 = "They"
VAR Them4 = "Them"
VAR Their4 = "Their"
VAR Theirs4 = "Theirs"
VAR Themselves4 = "Themselves"
VAR Themself4 = "Themselves"
VAR s4 = ""

VAR they5 = "they"
VAR them5 = "them"
VAR their5 = "their"
VAR theirs5 = "theirs"
VAR themselves5 = "themselves"
VAR themself5 = "themselves"
VAR They5 = "They"
VAR Them5 = "Them"
VAR Their5 = "Their"
VAR Theirs5 = "Theirs"
VAR Themselves5 = "Themselves"
VAR Themself5 = "Themselves"
VAR s5 = ""

VAR they6 = "they"
VAR them6 = "them"
VAR their6 = "their"
VAR theirs6 = "theirs"
VAR themselves6 = "themselves"
VAR themself6 = "themselves"
VAR They6 = "They"
VAR Them6 = "Them"
VAR Their6 = "Their"
VAR Theirs6 = "Theirs"
VAR Themselves6 = "Themselves"
VAR Themself6 = "Themselves"
VAR s6 = ""

=== function init_character(u3_x, u3_pron)
    ~ temp u3_they = ""
    ~ temp u3_them = ""
    ~ temp u3_their = ""
    ~ temp u3_theirs = ""
    ~ temp u3_themselves = ""
    ~ temp u3_They = ""
    ~ temp u3_Them = ""
    ~ temp u3_Their = ""
    ~ temp u3_Theirs = ""
    ~ temp u3_Themselves = ""
    ~ temp u3_s = ""

    {u3_pron:
        - "he":
            ~ u3_they = "he"
            ~ u3_them = "him"
            ~ u3_their = "his"
            ~ u3_theirs = "his"
            ~ u3_themselves = "himself"
            ~ u3_They = "He"
            ~ u3_Them = "Him"
            ~ u3_Their = "His"
            ~ u3_Theirs = "His"
            ~ u3_Themselves = "Himself"
            ~ u3_s = "s"
        
        - "she":
            ~ u3_they = "she"
            ~ u3_them = "her"
            ~ u3_their = "her"
            ~ u3_theirs = "hers"
            ~ u3_themselves = "herself"
            ~ u3_They = "She"
            ~ u3_Them = "Her"
            ~ u3_Their = "Her"
            ~ u3_Theirs = "Her"
            ~ u3_Themselves = "Herself"
            ~ u3_s = "s"
        
        - "it":
            ~ u3_they = "it"
            ~ u3_them = "it"
            ~ u3_their = "its"
            ~ u3_theirs = "its"
            ~ u3_themselves = "itself"
            ~ u3_They = "It"
            ~ u3_Them = "It"
            ~ u3_Their = "Its"
            ~ u3_Theirs = "Its"
            ~ u3_Themselves = "Itself"
            ~ u3_s = "s"
        
        - "you":
            ~ u3_they = "you"
            ~ u3_them = "you"
            ~ u3_their = "your"
            ~ u3_theirs = "yours"
            ~ u3_themselves = "yourself"
            ~ u3_They = "You"
            ~ u3_Them = "You"
            ~ u3_Their = "Your"
            ~ u3_Theirs = "Yours"
            ~ u3_Themselves = "Yourself"
            ~ u3_s = ""
        
        - "themselves":
            ~ u3_they = "they"
            ~ u3_them = "them"
            ~ u3_their = "their"
            ~ u3_theirs = "theirs"
            ~ u3_themselves = "themselves"
            ~ u3_They = "They"
            ~ u3_Them = "Them"
            ~ u3_Their = "Their"
            ~ u3_Theirs = "Theirs"
            ~ u3_Themselves = "Themselves"
            ~ u3_s = ""
        
        - "themself":
            ~ u3_they = "they"
            ~ u3_them = "them"
            ~ u3_their = "their"
            ~ u3_theirs = "theirs"
            ~ u3_themselves = "themself"
            ~ u3_They = "They"
            ~ u3_Them = "Them"
            ~ u3_Their = "Their"
            ~ u3_Theirs = "Theirs"
            ~ u3_Themselves = "Themself"
            ~ u3_s = ""
    }
    
    {u3_x:
        - 1:
            ~ they = u3_they
            ~ them = u3_them
            ~ their = u3_their
            ~ theirs = u3_theirs
            ~ themselves = u3_themselves
            ~ They = u3_They
            ~ Them = u3_Them
            ~ Their = u3_Their
            ~ Theirs = u3_Theirs
            ~ Themselves = u3_Themselves
            ~ s = u3_s
    
        - 2:
            ~ they2 = u3_they
            ~ them2 = u3_them
            ~ their2 = u3_their
            ~ theirs2 = u3_theirs
            ~ themselves2 = u3_themselves
            ~ They2 = u3_They
            ~ Them2 = u3_Them
            ~ Their2 = u3_Their
            ~ Theirs2 = u3_Theirs
            ~ Themselves2 = u3_Themselves
            ~ s2 = u3_s
    
        - 3:
            ~ they3 = u3_they
            ~ them3 = u3_them
            ~ their3 = u3_their
            ~ theirs3 = u3_theirs
            ~ themselves3 = u3_themselves
            ~ They3 = u3_They
            ~ Them3 = u3_Them
            ~ Their3 = u3_Their
            ~ Theirs3 = u3_Theirs
            ~ Themselves3 = u3_Themselves
            ~ s3 = u3_s
    
        - 4:
            ~ they4 = u3_they
            ~ them4 = u3_them
            ~ their4 = u3_their
            ~ theirs4 = u3_theirs
            ~ themselves4 = u3_themselves
            ~ They4 = u3_They
            ~ Them4 = u3_Them
            ~ Their4 = u3_Their
            ~ Theirs4 = u3_Theirs
            ~ Themselves4 = u3_Themselves
            ~ s4 = u3_s
    
        - 5:
            ~ they5 = u3_they
            ~ them5 = u3_them
            ~ their5 = u3_their
            ~ theirs5 = u3_theirs
            ~ themselves5 = u3_themselves
            ~ They5 = u3_They
            ~ Them5 = u3_Them
            ~ Their5 = u3_Their
            ~ Theirs5 = u3_Theirs
            ~ Themselves5 = u3_Themselves
            ~ s5 = u3_s
    
        - 6:
            ~ they6 = u3_they
            ~ them6 = u3_them
            ~ their6 = u3_their
            ~ theirs6 = u3_theirs
            ~ themselves6 = u3_themselves
            ~ They6 = u3_They
            ~ Them6 = u3_Them
            ~ Their6 = u3_Their
            ~ Theirs6 = u3_Theirs
            ~ Themselves6 = u3_Themselves
            ~ s6 = u3_s
 
    }

    ~ themself = themselves
    ~ Themself = Themselves

=== function gend(u3_m, u3_f, u3_n)
    {they:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }

=== function gend2(u3_m, u3_f, u3_n)
    {they2:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }

=== function gend3(u3_m, u3_f, u3_n)
    {they3:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }

=== function gend4(u3_m, u3_f, u3_n)
    {they4:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }

=== function gend5(u3_m, u3_f, u3_n)
    {they5:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }

=== function gend6(u3_m, u3_f, u3_n)
    {they6:
        - "he": ~ return u3_m
        - "she": ~ return u3_f
        - else: ~ return u3_n
    }