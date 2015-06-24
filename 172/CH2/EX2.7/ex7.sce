//example 6
//calculating balancing force
clear
clc
Po=100//Outside atmospheric pressure in kPa
F1=25 //net force on the smallest piston in kN
A1=0.01 //cross sectional area of lower piston in m^2
P1=Po+F1/A1 //fluid pressure in kPa
d=900 //density of fluid in kg/m^3
g=9.81 //acc. due to gravity in m/s^2
H=6 //height of second piston in comparison to first one in m
P2=P1-d*g*H/1000 //pressure at higher elevation on piston 2 in kPa
A2=0.05 // cross sectional area of higher piston in m^3
F2=(P2-Po)*A2 //balancing force on second piston in kN
printf("\n hence, balancing force on second larger piston is F2 = %.1f N. \n",F2)