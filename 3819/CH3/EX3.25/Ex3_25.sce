// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.25

//Data given in the Problem
R=4
dens=1000
g=9.81
theta=45
AO=4
BO=4

//calculations
A=2*R*sin(theta*%pi/180)
h=(2*4*sin(theta/180*%pi))/2        //h=Ab/2 and AB=2AD where AD=Rsin(45)
F_x=dens*g*A*h
//For F_y
A_ACBOA=%pi/4*R^2
A_ABO=AO*BO/2
F_y=dens*g*(A_ACBOA-A_ABO)
mprintf("The resultant Force is %f N in x and %f N in y direction\n",F_x,F_y)
