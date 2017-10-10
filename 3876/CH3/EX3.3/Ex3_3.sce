//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
W= 0.220 //gms
g= 980.7 //cm per sec62
f= 0.98
l= 4 //cm

//Calculations
T= W*g/(2*l)
Tc= T*f

//Results
mprintf("Apparent Surface Tension = %.1f dynes per cm",T);
mprintf("\nExact Surface Tension = %.1f dynes per cm",Tc);
