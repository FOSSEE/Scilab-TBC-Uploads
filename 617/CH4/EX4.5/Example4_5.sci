clc();
clear;
// To estimate the time lag of temperature (sine) wave 
t = 24;                        // Time period of tempearture wave in hr
k = 0.6;                       // Thermal conductivity of wall in Btu/hr-ft-degF
Cp = 0.2;                      // Specific heat capacity of wall in Btu/lb-degF
y = 110;                       // specific gravity in lb/ft^3
x = 8/12;                      // Distance from surface in ft
a = k/(y*Cp);                   // Thermal diffusivity in ft^2/hr
n=1/t;                         // frequency in /hr
delr = x/(2*sqrt(a*%pi*n);     // Time lag in hr
printf("Time lag of the temperature at a point 8 in from surface is %.1f hr", delr;
