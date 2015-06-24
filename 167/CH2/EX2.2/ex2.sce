//example 2
//analysis of wind energy
clear
clc
v=8.5 //velocity of wind in m/s
e=v^2/2 //wind energy per unit mass of air in j/kg
m=10 //mass of wind to be considered in kg
E=m*e //energy in joules of wind of mass m 
mf=1154 //mass flow rate in kg/s
Ef=mf*e //wind energy in W for a mass flow rate of mf
printf("\n Hence,wind energy per unit mass is = %.1f J/kg. \n",e);
printf("\n The wind energy for a mass of 10 kg is = %.0f J. \n",E);
printf("\n The wind energy for flow rate of 1154 kg/s is = %.1f kW. \n",Ef/1000);