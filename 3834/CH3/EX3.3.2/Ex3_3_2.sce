//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.3.2
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given
L=5;//fiber length in km
NA=0.275;//numerical aperture
c=3E5;//speed of light in km
n1=1.48;//refractive index

p=2*c*n1;

e=NA*NA;

d=L*e;

deltatsi=(d/p)*1E9;//pulse spreading in ns //answer vary due round-off
deltatsi_by_L=(deltatsi/L)//pulse spreading per unit length in ns/Km//answer vary due round-off

mprintf("\n Light pulse spreading= %.2f ns",deltatsi);
mprintf("\n Pulse spreading per unit length is=%.2f ns/Km",deltatsi_by_L);
