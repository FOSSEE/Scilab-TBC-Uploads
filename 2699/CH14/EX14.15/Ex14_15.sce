//example 14.15 PG-14.39
clc
clear
printf("\n\n Given=> \n")
printf("      LHS = A + A''B + AB''\n\n")
printf("          = (A + A''B) + AB''\n\n")
printf("          = A + B + AB''  ..........Since A+A''B=A+B\n\n")
printf("          = A + A + B    ..........Since A+A''B=A+B\n\n")
printf("          = A + B     .............Since A+A=A\n\n")
printf(" Therefore \n\n")
printf("      A + A''B + AB'' = A + B")
