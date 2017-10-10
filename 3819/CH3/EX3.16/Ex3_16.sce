// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.16

//Data given in the Problem
d=3
A=%pi/4*3*3
DC=1
BC=3
BE=2
CG=1.5
g=9.81
dens=1000

//Calculations
//1)
sin_theta=(BE-DC)/BC
h=DC+CG*sin_theta
F=dens*g*A*h
mprintf("The total pressure is %f N \n",F)
//2)
IG=%pi/64*d^4
H=IG*sin_theta^2/(A*h)+h
mprintf("The Centre of pressure is %f m",H)
