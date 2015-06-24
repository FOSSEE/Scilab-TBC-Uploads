clc
clear

//Input data
h=9500 //Altitude in m
u=800*(5/18) //Flight velocity in m/s
eff_prop=0.55 //Propulsive efficiency of the cycle
eff_o=0.17 //Overall efficiency
F=6100 //Thrust in N
d=0.17 //Density in kg/m^3
CV=46000 //Calorific value in kJ/kg

//Calculation
mf=(F*u)/(eff_o*CV*10^3) //Mass flow rate of fuel in kg/s
Cj=((2*u)/(eff_prop))-u //Jet velocity in m/s, wrong calculation in textbook
Ca=Cj-u //Absolute Jet velocity in m/s
ma=(F-(mf*Cj))/(Ca) //Mass flow rate of air in kg/s
m=ma+mf //Mass flow rate of gas in kg/s
f=ma/mf //Air fuel ratio
Q=m/d //Volume flow rate in m^3/s
Dj=sqrt((4*Q)/(%pi*Cj))*10^3 //Diameter of jet in mm, Cj value wrong in textbook 
P=((F*u)/eff_prop)*10^-3 //Power output of engine in kW

//Output
printf('(A)Diamter of the jet is %3.1f mm\n (B)Power output is %3.1f kW\n (C)Air-fuel ratio is %3.3f\n (D)Absolute velocity of the jet is %3i m/s\n',Dj,P,f,Ca)
