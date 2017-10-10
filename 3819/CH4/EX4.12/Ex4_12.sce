// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.12

//Given Data Set in the Problem
dens=1000
g=9.81
D=4
d=2.4
h=4
SG=0.6
AB=d/2
AG=h/2
BG= AG-AB

//Calculaions
I=%pi/64*D^4
Vol=%pi/4*D^2*d
GM=I/Vol-BG         //Meta centric height
mprintf("The meta centric height is %f m\n",GM)
