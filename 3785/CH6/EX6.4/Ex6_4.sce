// Example 6_4
clc;funcprot(0);
// Given data
D=10;// The diameter of circular shaft in cm
L=10;// The bearing length in cm
h=0.1;// The gap betwen the shaft and the bearing in mm
mu=6.7*10^-5;// Viscosity in Pa/s
n=3600;// rpm

// Calculation
omega=(2*%pi*n)/60;// s^-1
T=(%pi*mu*omega*(L/100)*(D/100)^3)/(4*(h/1000));// The torque applied to the shaft in Nm
P=T*omega;// The power consumed in the bearing by friction in W
printf("\nThe torque applied to the shaft,T=%1.3e Nm \nThe power consumed in the bearing by friction,P=%1.3f W",T,P);
