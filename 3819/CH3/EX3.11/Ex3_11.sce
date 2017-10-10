// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.11

//Data given in the Problem
d=0.5
D=1
SG=0.8
dens=1000
dens1=SG*dens
w=2
g=9.81

//calculations
//1)total pressure 
pA=0
pD=dens1*g*D
pB=pD+dens*g*d      //Pressure on the base
F1=1/2*D*pD*w
F2=(d*pD)*w
F3=1/2*d*(pB-pD)*2
F=F1+F2+F3
mprintf("The total pressure on one side of the wall is %f N\n",F)

//Centre of pressure
//we know , from geametry that
h=((F1*2/3*D)+(F2*(D+0.5*d))+(F3*(D+2/3*d)))/F
mprintf("The centre of pressure is %f m from the top",h)

