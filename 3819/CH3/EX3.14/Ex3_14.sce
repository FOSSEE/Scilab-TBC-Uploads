// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.14

                                   //Problem a)
//Data given in the Problem
b=2
d=3
theta=30
dens=1000
g=9.81

//Calculations
//1)total pressure
A=b*d
h=1.5+1.5*sin(30/180*%pi)
F=dens*g*A*h
mprintf("Part a)\nThe total pressure is %f N\n",F)
//2)
IG=(b*(d^3))/12
H=IG*sin((30/180*%pi))^2/(A*h)+h
mprintf("The COP is %f m \n",H)

                                    //Problem b)
//Data given in the Problem
b=3
d=4
theta=30
dens=1000
A=b*d
h=2+2*sin(theta/180*%pi)

//Calculations
//1)
F=dens*g*A*h
mprintf("Part b)\nThe total pressure is %f N\n",F)
//2)
//2)
IG=(b*(d^3))/12
H=IG*sin((30/180*%pi))^2/(A*h)+h
mprintf("The COP is %f m \n",H)
