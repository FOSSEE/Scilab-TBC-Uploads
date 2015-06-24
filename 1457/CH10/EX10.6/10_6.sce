clc
//Initialization of variables
nu=1.15*10^-5 //m^2/s
D=2*10^-3 //m
V=15 //m/s
T=-20 //C
//calculations
R=D*V/nu
f=0.2 *V/D *(1+T/R)
//results
printf("Frequency of oscillation = %d Hz",f)
