// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.1

//Data given in the Problenm
w=2
d=3
dens=1000
g=9.81

//Calculations
//Upper edge coincides with water surface
A=w*d
H=d/2
F=dens*g*A*H
I_G=w*d^3/12            //MOI about the CG of the area of the surface
h=I_G/(A*H)+H
mprintf("The position of COP when Upper edge coincides with water surface is %fm\n",h)
mprintf( "And the Pressure on the area is %f N \n",F)

//Upper edge is 2.5m below  water surface
H=d/w+2.5
F=dens*g*H*A
h=I_G/(A*H)+H
mprintf("The position of COP when Upper edge is 2.5m belowh water surface is %f m\n",h)
mprintf( "And the Pressure on the area is %f N \n",F)

