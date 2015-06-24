clc
clear
//Initialization of variables
T=154.5 //C
P=8620*10^3 //Pa
Tc=135 //C
T0=273.1 //C
Pc=3648*10^3 //Pa
w=0.1756
V=0.154 
R=8.3143*10^3
//calculations
Tr=(T+T0)/(T0+Tc)
Pr= P/Pc
Z=P*V/(R*(T+T0))
a= 0.42747*R^2 *(Tc+T0)^2 /Pc *(1+ (0.48508 + 1.55171*w - 0.15613*w^2)*(1-sqrt(Tr)))^2
b=0.08664*R*(Tc+T0)/Pc
A= a*P/(R^2 *(T+T0)^2)
B=b*P/(R*(T+T0))
lnphi= (Z-1) - log(Z-B) - A/B *log((Z+B)/Z) 
phi=exp(lnphi)
f=phi*P
//results
printf("fugacity = %d kPa",f/10^3)
//The answer is a bit different due to rounding off error in textbook
