clc
//Initialization of variables
f=0.0131
d=0.5 //m
//calculations
V=2.12 //m/s
R=10^6
Q=%pi*d^2 /4 *V 
d1=32.8*10^-6 /(V* sqrt(f))
//results
printf("flow rate = %.3f m^3/s",Q)
printf("\n nominal thickness = %.2e m",d1)
