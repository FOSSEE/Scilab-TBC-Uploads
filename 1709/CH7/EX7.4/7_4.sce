clc
//Initialization of variables
T1=420 //R
T2=380 //R
hig=1221.2
P1=0.0019
//calculations
lnp=hig*778*(1/T1 - 1/T2)/85.6
pra=exp(lnp)
P2=pra*P1
//results
printf("Final pressure = %.3e psia",P2)
