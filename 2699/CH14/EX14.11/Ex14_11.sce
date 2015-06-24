//example 14.11 PG-14.39
clc
clear
printf("     Given=> LHS = ABC+AB''C+ABC''\n\n")
printf("                  = AC(B+B'') + ABC''   .......Distributive property\n\n")
printf("                  = AC.1 + ABC''     .........Since A+A''=1\n\n")
printf("                  = AC + ABC''     ...........Since A.1=1\n\n")
printf("                  = A(C+BC'')   ..............Distributive property\n\n")
printf("                  = A(C+B)       ............Since A+A''B=A+B\n\n")
printf("Therefore \n")
printf("    ABC+AB''C+ABC'' = A(C+B)")
