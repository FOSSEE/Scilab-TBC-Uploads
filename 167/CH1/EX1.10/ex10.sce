//ques10
//Hydrostatic Pressure in a Solar Pond with Variable Density
clear
clc
d=1040;//density of pond in Kg/m^3
g=9.81;//acc due to gravity in m/s^2
h1=0.8;//height of liquid in metre
H=4;//height of liquid of variable density
P1=d*g*h1/1000;//divided by 1000 to convert it into kPa
P=P1+integrate('d*g*sqrt(1+tan(%pi/4*z/H)^2)','z',0,4)/1000;
printf('Pressure at the bottom of the gradient zone = %.1f kPa',P);