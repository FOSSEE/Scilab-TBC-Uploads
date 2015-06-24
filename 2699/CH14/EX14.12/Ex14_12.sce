//example 14.12 PG-14.39
clc
clear
printf("  Given=> \n")
printf("          A''BCD''+ BCD''+ BC''D''+ BC''D\n\n")
printf("               = BCD''(A''+1)+ BC''D''+ BC''D  .......Distributive property\n\n")
printf("               = BCD''+ BC''D''+ BC''D    ...........Since A+1=1\n\n")
printf("               = BD''(C+C'')+ BC''D       ..........Distributive property\n\n")
printf("               = BD''+ BC''D        ...............Since A+A''=1\n\n")
printf("               = B(D''+C''D)          .............Distributive property\n\n")
printf("               = B(D''+C'')          ..............Since A+A''B=A+B\n\n")
printf("Therefore \n")
printf("          A''BCD''+ BCD''+ BC''D''+ BC''D = B(D''+C'')")
