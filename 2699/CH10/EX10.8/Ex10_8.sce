//EX10_8 PG-10.40
clc
A=61;//gain required for the non inverting amplifier
R1=1e3;
printf("Refer to the figure-10.36 shown\n")
printf(" \n The gain of the non inverting amplifier is A=1+Rf/R1")
//the gain of the non inverting amplifier is A=1+Rf/R1
x=A-1;//x=Rf/R1
Rf=x*R1;
printf("\n\n Therefore feedback resistance Rf=%.0f kohm \n",Rf*1e-3)
