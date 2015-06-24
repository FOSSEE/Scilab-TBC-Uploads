clc
clear
//Input data
Z1=0.17;//Level of liquid in m
Z=0.76;//Barometer readings in m
d=13596;//Density of Hg in kg/m^3
g=9.806;//Gravity in m/sec^2
s=0.8;//Specific gravity 
d1=1000;//Density of water in kg/m^3

//Calculations
dl=s*d1;//Density of given liquid in kg/m^3
Pa=d*g*Z;//Atmospheric pressure in N/m^2
p=dl*g*Z1;//Pressure in N/m^2
Pab=(Pa-p)/10^5;//Absolute pressure in bar

//Output
printf('Absolute pressure of the gas Pab = %3.6f bar ',Pab)
