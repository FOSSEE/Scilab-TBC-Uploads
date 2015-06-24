//example 2 
//heat transfer in a given process
clear
clc
u1=87.94 //specific internal energy of R-12 at state 1 in kJ/kg
u2=276.44 //specific internal energy of R-12 at state 2 in kJ/kg
s1=0.3357 //specific entropy at state 1 in kJ/kg-K
s2=1.2108 //specific entropy at state 2 in kJ/kg-K
V=0.001 //volume of saturated liquid in m^3
v1=0.000923 //specific volume in m^3/kg
m=V/v1 //mass of saturated liquid in kg
T=20 //temperature of liquid in celsius
Q12=m*(T+273.15)*(s2-s1) //heat transfer in kJ to accomplish the process
W12=m*(u1-u2)+Q12 //work required to accomplish the process
printf(" \n hence,work required to accomplish the process is W12=%.1f kJ.\n",W12)
printf(" \n and heat transfer is Q12=%.1f kJ.\n",Q12)