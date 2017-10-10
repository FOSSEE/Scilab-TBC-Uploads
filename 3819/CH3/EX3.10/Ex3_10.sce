// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.10

//Data given in the Problem
d1=2
d2=2
g=9.81
dens=1000
SG=1.15
h=1.5


//calculations
A=1/2*d1*d2
//1)thrust on plate
F=SG*dens*g*A*h
mprintf("The thrust on the plate is %f N\n",F)

//2)Centre of pressure
IG=((d1*(d2/2)^3)/12)+((d2*(d1/2)^3)/12)
H=IG/(A*h)+h
mprintf("The cente ofpressure is at %f m ",H)
