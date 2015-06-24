clc
clear
//Input data
Zw=50;//Manometer reading of water in cm
Zo=763;//Atmospheric pressure in mm of Hg
d=13.6*10^3;//Density of Hg in kg/m^3
dw=1000;//Density of water in kg/m^3
g=9.81;//Gravity in m/sec^2

//Calculations
Pa=(d*g*Zo)/10^6;//Atmospheric pressure in kPa
Pg=(dw*g*Zw)/10^5;//Gauge pressure in kPa
Pab=Pa+Pg;//Absolute pressure in kPa

//Output
printf('Absolute pressure Pab = %3.3f kPa ',Pab)
