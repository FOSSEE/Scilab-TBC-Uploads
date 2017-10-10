// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.19

//Given Data Set in the Problem
dens=1000
g=9.81
sg_oil=0.8
h1=20/100
h2=30/100
h3=30/100

//calculations
dens_oil=sg_oil*dens
dl=h1+h2-h3
//Pressure in left limb below X-X=pA-dens*g*h2
//Pressure in left limb below X-X=pB-dens*g*h3-sg_oil*dens*h1
pB_pA=dens*g*h3+sg_oil*dens*g*h1-dens*g*h2
mprintf("The difference in the pressures is equal to %f N/m^2\n",pB_pA)
