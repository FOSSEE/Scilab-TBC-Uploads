// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.5

//Data given in the Problem
d=4
A=%pi/4*d
SG=0.87
dens=SG*1000
g=9.81

//Calculations
w=dens*g
p=19.6*10^4
p_head=p/w
//1)Force exerted
F=dens*g*4*%pi*p_head
mprintf("The Force exerted is %f MN\n",F*10^-6)
//2)centre of Pressure
IG=%pi/64*d^4
h=IG/(A*p_head)+p_head
mprintf("the Position of COP is %f m",h)
