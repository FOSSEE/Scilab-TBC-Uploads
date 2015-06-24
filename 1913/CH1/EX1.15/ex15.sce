clc
clear
//Input data 
d=13.596*10^3;//Density of Hg in kg/m^3
dl=800;//Density of liquid in kg/m^3
Z=30;//Level of the liquid in the arm in cm
Z1=0.75;//Barometric pressure in m
g=9.81;//Gravity in m/sec^2

//Calculatins
Pg=(dl*g*Z)/10^7;//Gauge pressure in bar
Pa=(d*g*Z1)/10^5;//Atmospheric pressure in bar
Pab=Pa+Pg;//Absolute pressure in bar

//Output
printf('Absolute pressure of the gas Pab = %3.5f bar ',Pab)
