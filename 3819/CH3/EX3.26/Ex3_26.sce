// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.26

//Data given in the Problem
dens=1000
g=9.81
theta=30
w=4
R=8

//calculations
h=w/2
A=w*1       //Area
F_x=dens*g*w*h
W_CBDC=dens*g*(theta/360*%pi*R^2-w/2*8*cos(theta*%pi/180))
F_y=W_CBDC
mprintf("The resultant Force is %f N in x and %f N in y direction\n",F_x,F_y)
