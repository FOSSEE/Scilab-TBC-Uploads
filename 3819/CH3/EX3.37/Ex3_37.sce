// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 3.37

//Given Data Set in the Problem
dens=1000
g=9.81
h=500/1000
a=2.45
b=2
AB=h

//calculations
pB=dens*g*h*(1+a/g)
BC=pB
F_AB=(1/2*AB*BC)*b              //force on side AB
mprintf("The force on side AB when it is moving upward with a const accn is %f N\n",F_AB)
//1)tank is moving vertically downward
pB=dens*g*h*(1-a/g)
BC=pB
F_AB=(1/2*AB*BC)*b              //force on side AB
mprintf("The force on side AB when it is moving downward with a const accn is %f N\n",F_AB)
//1)tank is stationary
pB=dens*g*h
BC=pB
F_AB=(1/2*AB*BC)*b              //force on side AB
mprintf("The force on side AB when it is moving upward with a const accn is %f N\n",F_AB)
