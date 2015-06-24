// Example 3.2, page no-73
clear
clc

delta_i=7     //orbital plane inclination
V=3000        //velocity of satellite in circularized orbit
vp=2*V*sin(delta_i*%pi/(2*180))
printf("Velocity thrust to make the inclination 0° = %.0f m/s",vp)

