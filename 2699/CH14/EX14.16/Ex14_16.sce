//example 14.16 PG-14.40
clc
clear
printf("\n\n Given=> \n\n")
printf("          ((AB)''+A''+AB)'' = ")
printf("(A''+ B''+ A''+ AB)''     ....Since (AB)''= A''+B''\n\n")
printf("                        = (A''+ B''+ A''+ B)''   .......Since A+A''B=A+B\n\n")
printf("                        = (A''+ B''+ B)''   ...........Since A+A=A\n\n")
printf("                        = (A''+ 1)''   ...............Since A+A''=1\n\n")
printf("                        = 1''       .................Since A+1=1\n\n")
printf("                        = 0 \n\n")
printf("  Therefore \n\n")
printf("          (A''B''+A''+AB)'' = 0")
