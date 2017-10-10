// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.22

//Data given in the Problem
w=1
r=2
AO=2
dens=1000
g=9.81

//calculations
//For F in x dir:
A=w*r       //Projected are of curved surface on vertical wall
//h=depth of CG of OC from free surface
h=1.5+AO/2              //since AO=OB
F_x=dens*g*A*h
mprintf("The Force in th x directions is %f N \n",F_x)

//For F in y direction;
AD=1.5
W_DAOC=dens*g*(AD*AO*1)
W_AOB=dens*g*%pi/4*AO^2
F_y=(W_DAOC+W_AOB)            //weight of DAOC +AOB
mprintf("The Force in th y directions is %f N \n",F_y)
