// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.23

//Data given in the Problem
r=2
w=1
dens=1000
g=9.81

//calculations
//For F_x
A=r*w
h=1/2*r
F_x=dens*g*A*h
//For F_y
F_y=dens*g*%pi/4*r^2*w
//Net F
F=(F_x^2+F_y^2)^(1/2)
//Angle maded my the resultant force
theta=(atan(F_y/F_x))/%pi*180
mprintf("The resultant Force is %f N at an angle of %f with horizontal\n",F,theta)
