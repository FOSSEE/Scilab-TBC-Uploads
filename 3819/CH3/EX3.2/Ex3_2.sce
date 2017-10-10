// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.2

//Data given in the Problem
d=1.5
g=9.81
dens=1000
h=3

//Calculations
A=%pi*d*d/4
F=dens*g*A*h
mprintf("The Total Pressure on the circular plate is %f N\n",F)
//Position of Centre of Presusre 
I_G=%pi*d/64
H=h+I_G/(A*h)
mprintf("The position of the centre of Pressure is %f m ",H)
