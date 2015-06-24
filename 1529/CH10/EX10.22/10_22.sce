//Chapter 10, Problem 22
clc
I=2.5e-3                        //current in amperes
R=5000                          //resistance in ohm
e1=0.4                          //error tolerance
e2=0.5                          //error tolerance
V=I*R
emax=e1+e2
V1=(emax/100)*V
printf("V = %.1f V\n accuracy = %.2f V\n",V,V1)
