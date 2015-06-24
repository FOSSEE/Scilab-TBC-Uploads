clc
clear
PA=200;//Gauge pressure reading for A in kPa
PB=120;//Gauge pressure reading for B in kPa
hb=750;//Barometer reading in mm of Hg
g=9.806;//Gravitational constant in m/sec^2
d=13597;//Density of Hg in barometer in kg/m^3

//Calculations
Pa=d*g*hb/10^6;//Atmospheric pressure in kPa
Pab1=PA+Pa;//Absolute pressure in container A in kPa
Pab2=PB+Pab1;//Absolute pressure in container B in kPa

//Output 
printf('(a)The absolute pressure in the container A Pab1 = %3.2f kPa \n (b)The absolute pressure in the container B Pab2 = %3.2f kPa ',Pab1,Pab2)
