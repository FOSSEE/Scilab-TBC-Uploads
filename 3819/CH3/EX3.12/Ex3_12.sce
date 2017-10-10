// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.12

//Data given in the Problem
d=0.6
a=1.5
SG=0.9
dens=1000
g=9.81

//Calculations
dens1=SG*dens
h=a-d
pA=0
pD=dens1*g*h
pB=dens1*g*h+dens*g*d
//In the diagram,DE=pD,BC=pB,FC=pB-pD

//1)Total pressure
F1=(1/2*h*pD)*a
F2=(d*pD)*a
F3=(1/2*d*(pB-pD))*a
F=F1+F2+F3
mprintf("The total pressure is %f N\n",F)

//2) Position of Centre of Pressure
h=(F1*d+F2*(a-d/2)+(F3*(a-d+2/3*d)))/F      //Taking moments of all forces
mprintf("The position of centre of pressure is %f m from A ",h)


