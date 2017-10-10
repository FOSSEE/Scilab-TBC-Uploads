//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
d= 0.789 //gram per cc
r= 0.010 //cm
h= 5.76 //cm
g= 980.7 // cm /sec^2

//Calculations
R= d*h*r*g/2

//Results
mprintf("Surface Tension = %.1f dynes per cm",R);
