clc
//initialization of new variables
clear
h=380 //m
T=300 //K
g=9.81 //m/s^2
R=286.6  //m2/(s^2 K)
//calculations
Pr=exp(-g*h/(R*T)) //P2/P1
P1=1  //atm
dP=(P1-Pr)*101325 //N/m^2
//result
printf('The difference in pressure is %d N/m^2',dP)


