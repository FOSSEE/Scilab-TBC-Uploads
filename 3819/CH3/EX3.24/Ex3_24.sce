// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.24

//Data given in the Problem
d=4
R=2
l=8
dens=1000
g=9.81

//calculations
A=d*l
h=d/2
F_x=dens*g*A*h
V_ACB=%pi/2*R^2*l           //volume of portion ACB
F_y=dens*g*V_ACB
//Net F
F=(F_x^2+F_y^2)^(1/2)
//Angle maded my the resultant force
theta=(atan(F_y/F_x))/%pi*180
mprintf("The resultant Force is %f N at an angle of %f with horizontal\n",F,theta)
