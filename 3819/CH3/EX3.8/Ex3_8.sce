// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.8

//Data given in the Problem
a=10
b=16
d=6
dens=1000
g=9.81

//Calculations
A=(a+b)/2*d
//x is the distance of the CG from the trapezoidal channel from the surface
x=((2*a+b)/(a+b))*(d/3)
h=x         //This also equals the dist. of CG of the trapezoidla from free surface
F=dens*g*A*h
mprintf("The total pressure id %f N\n",F)

//For centre of pressure
IG=(a^2+4*a*b+b^2)/(36*(a+b))*d^3
H=IG/(A*h)+h
mprintf("The centre of pressure if at %f m \n",H)
