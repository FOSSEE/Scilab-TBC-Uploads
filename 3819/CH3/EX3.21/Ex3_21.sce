// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.21

//Data given in the Problem
b=2
h=3
A=b*h/2
theta =60
dens=1000
g=9.81

//calculations
x=1/3*h             //x=AG distance
H=2.5 + (x * sin (theta*%pi/180))
//1)
F=dens*g*A*H
mprintf("The total pressure  is %f N\n",F)
//2)
IG=b*h^3/36
COP=IG*(sin (theta*%pi/180))^2/(A*H)+H
mprintf("Te COP is at %f m \n",COP)
