 //example 4
//percentage of vapor 
clear
clc
vliq=0.1 //volume of saturated liquid in m^3
vf=0.000843 //in m^3/kg
vvap=0.9 //volume of saturated vapor R-134a in equilbrium
vg=0.02671 //in m^3/kg
mliq=vliq/vf //mass of liquid in kg 
mvap=vvap/vg //mass of vapor in kg
m=mliq+mvap //total mass in kg
x=mvap/m //percentage of vapor on mass basis
disp('hence,% vapor on mass basis is 22.1')