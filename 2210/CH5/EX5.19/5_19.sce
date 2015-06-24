//Chapter 5, Problem 19
clc
f=800e3                         //frequency in hertz
Ls=365e-6                      //capacitance in farad
Rs=8                         //resistance in ohm

//calculation
Qs=(2*%pi*f*Ls)/Rs
printf("Quality factor Qs = %d",Qs)
