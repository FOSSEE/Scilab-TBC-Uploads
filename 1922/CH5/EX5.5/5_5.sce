
clc
clear
//Initialization of variables
R=8314.3
b=0.0306 //m^3/kmol
a=0.548*10^6 //pa m^6/kmol^6
T=973.1
P=25*10^6 //Pa
//calculations
Vi= R*T/P
x=poly(0,'x')
vec=roots(P*x^2 *(x-b) +a*(x-b) - R*T*(x^2))
volume= vec(1)
dH=8.0906*10^6 -P*volume +0.548*10^6 /volume
//results
printf("Change in enthalpy  = %.2e J/kmol",dH)
