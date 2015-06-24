clc 
clear
//Input data
Z=70;//Vaccum gauge reading in cm of Hg
Pa=101.325;//Atmospheric pressure in kPa
d=13.6*10^3;//Density of Hg in kg/m^3
g=9.81;//Gravity in m/sec^2

//Calculations
Pv=(d*g*Z)/10^5;//Vaccum pressure in kPa
Pab=Pa-Pv;//Absolute pressure in kPa

//Output
printf('Absolute pressure Pab = %3.4f kPa ',Pab)
