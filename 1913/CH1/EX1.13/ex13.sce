clc
clear
//Input data
Pv=30;//Vaccum pressure in kPa
Z=755;//Barometer reading in mm of Hg
d=13590;//Density of Hg in kg/m^3
g=9.81;//Gravity in m/sec^2

//calculations 
Pa=(d*g*Z)/10^6;//Atmospheric perssure in kPa
Pab=Pa-Pv;//Absolute pressure in kPa

//Output
printf('Asolute pressure in the tank Pab = %3.3f kPa ',Pab)
