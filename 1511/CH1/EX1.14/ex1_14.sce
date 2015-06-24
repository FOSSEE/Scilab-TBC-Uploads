// Example 1.14 page no-35
clear
clc

v0=1.19*10^7//m/sec
B=0.6*10^-4 //wb/m^2
v=400
//Radius of the circle described by the electron due to earth magnetic field
R=3.37*10^-6*sqrt(v)/B
printf("\nRadius of Circle, R=%.2fm",R)
y=sqrt((112)^2-20^2)
y=112-y
printf("\ndeflection of the electron on the screen, y=%.1f cm",y)
