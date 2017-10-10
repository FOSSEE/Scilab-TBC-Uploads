// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.21

//Given Data Set in the Problem
dens=1000
g=9.81
h1=0.35
h2=0.3
SG=0.8

//calculations
//pC=pD
//pC=pA-dens*g*h1.....adn pD=pB-dens*g*h1-dens*g*h2
pB_pA=SG*dens*g*h2
mprintf("The difference of pressure between the pipes is %f N/m^2\n",pB_pA)
