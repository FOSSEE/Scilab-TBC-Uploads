clc
clear
//Input data
g=9.806;//Gravity in m/sec^2
d=13596;//Density of Hg in kg/m^3
Z=9.75;//Level of Hg in cm
dw=1000;//Density of water in kg/m^3
Zw=0.034;//Coloumn of condensate in m
Zo=0.76;//Atmospheric pressure in m of Hg

//Calculations
P=dw*g*Zw;//Pressure in N/m^2
Pa=d*g*Zo;//Atmospheric pressure in N/m^2
Pg=(d*g*Z)/100;//Gauge pressure in N/m^2
Pab=(Pa+Pg-P)/10^5;//Absolute pressure in bar

//Output
printf('Absolute pressure of steam Pab = %3.6f bar ',Pab)
