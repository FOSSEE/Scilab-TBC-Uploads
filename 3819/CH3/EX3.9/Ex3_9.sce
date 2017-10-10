// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.9

//Data given in the Problem
a=2
b=4
d=1
g=9.81
dens=1000

//calculations
//1)Total Presusre
A=(a+b)/2*d             //Area of trapezoid
h=((2*a+b)/(a+b))*(d/3)    //distance od CG from AD surface     
F=dens*g*A*h
mprintf("The total pressure is %f N\n",F)

//2)
IG=(a^2+4*a*b+b^2)/(36*(a+b))*d^3
H=IG/(A*h)+h        //H is the COP position
mprintf("The centre of pressure if at %f m \n",H)
