//example 8
//calculating mass of air
clear
clc
P=100 //pressure in kPa
V=6*10*4 //volume of room in m^3
R=0.287 //in kN-m/kg-K
T=25 //temperature in Celsius
m=P*V/(R*(T+273.2)) //mass of air contained in room
printf("\n hence, mass of air contained in room is m = %.3f kg. \n",m)