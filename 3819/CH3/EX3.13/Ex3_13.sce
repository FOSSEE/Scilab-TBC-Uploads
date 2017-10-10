// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.13

//Data given in the Problem
h1=3+0.6
w=2
l=4
A=w*l
dens=1000
g=9.81

//Calculations
//1) total pressure at the bottom
F=dens*g*A*h1
mprintf("The total pressure at the bottom is %f N \n",F)

//2)Weight of water in tank
Vol=3*0.4*2+4*0.6*2
w=dens*g*(Vol)
mprintf("The weight of water in tank is %f N",w)
