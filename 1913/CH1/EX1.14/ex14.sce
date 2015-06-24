clc 
clear
//Input data
Z=0.562;//Level of open limb in m
Z1=0.761;//Barometer reading in m of Hg
g=9.79;//Gravity in m/sec^2
d=13640;//Density of Hg in kg/m^2

//Calculations
Pa=(d*g*Z1)/1000;//Atmospheric pressure in kPa
Ph=(d*g*Z)/1000;//Pressure exercterd due to height in kPa
Pab=Pa+Ph;//Absolute pressure in kPa

//Output
printf('The gas pressure Pab = %3.3f kN/m^2',Pab)
