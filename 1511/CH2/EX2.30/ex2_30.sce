// Example 2.30 page no-95
clear
clc

B=0.1 //Wb/m^2
Vh=50 //mV
I=10 //mA
rho=2*10^5 //Ohm-cm
w=3*10^-3 //m
x=B*I*10^-3/(Vh*10^-2*w)
printf("\n1/RH=%.3f",x)
y=1/(rho*10^-2)
printf("\nConductivity = %f mhos/meter\nmu=%.0f cm^2/V-sec",y,(y/x)*10^6)
