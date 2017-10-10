// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.31

//Data given in the Problem
dens=1000
g=9.81
d=3
l=4
W=196.2*1000
BOC=3
R=d/2

//calculations
h=d/2
A=BOC*l
F_y=dens*g*%pi/2*R^2*l
//Horizontal rxn at A
F_x=dens*g*A*h
R_x=F_x
mprintf("The  reaction  is %f N in x direction \n",R_x)
//Vertical reaction at B
R_y=W-F_y           //the difference of weight of cylinder and the upward thrust
mprintf("The  reaction  is %f N in y direction \n",R_y)
