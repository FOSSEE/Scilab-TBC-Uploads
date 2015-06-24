clc
//Initialization of variables
N0=6.025*10^23
M=63.57 
d=8.94 //g/cc
h=6.624*10^-27
me=9.1*10^-28
//calculations
NbyV=N0*d/M
mu0=h^2 *(3*NbyV/ %pi)^(2/3) /(8*me)
e0=0.6*mu0*10^-7
Teq=2*e0/(3*1.38*10^-23)
//results
printf("Equivalent temperature = %d K",Teq)
