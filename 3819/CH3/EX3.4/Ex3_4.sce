// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.4

//Data given in the Problem
d=3
A=%pi*d^2/4
h=4
g=9.81
dens=1000
//Calculations
//1)Force on disc
F=dens*g*A*h
mprintf("The Force on the disc is %f kN\n",10^-3*F)

//2)Torque required
IG=%pi/64*d^4
H=(IG/A/h)+h
T=F*(H-h)
mprintf("The Torque required to maintain the disc in edulirium is %f Nm ",T)
