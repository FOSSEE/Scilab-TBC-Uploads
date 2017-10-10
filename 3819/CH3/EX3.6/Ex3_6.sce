// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.6

//Data given in the Problem
b=4
h=4
A=b*h/2
SG=0.9
g=9.81
dens=SG*1000

//Calculations
H=1/3*h     //Distance of CG from the free surface of the oil
F=dens*g*A*H
,printf("The Total pressure is %f N\n",F)
IG=b*h^3/36
COP=IG/(A*H)+H
mprintf("The Centre of pressure is given by %f m",COP)
