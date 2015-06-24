//ques9
//Effect of piston weight on Pressure of Cylinder
clear
clc
Patm=0.97;//Atmospheric pressure in bar
m=60;//mass in kg
g=9.81;//acc due to gravity in m/s^2
A=0.04;//area in m^2
P=Patm+m*g/A/10^5;//net pressure after considering the effect in Bar
//divided by 10^5 to convert it into bars
printf("Pressure = %.2f Bar",P);