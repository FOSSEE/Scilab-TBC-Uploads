// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.10

//Given Data Set in the Problem
dens=1000
g=9.81
D=4
h=3
sg=0.6

//calculations
d=0.6*h
AB=d/2
AG=h/2
BG=AG-AB
//For meta centric height
I_yy=%pi/64*D^4
V_sub=%pi/4*D^2*d
GM=I_yy/V_sub-BG
mprintf("The meta centric height is at %f m\n",GM)
