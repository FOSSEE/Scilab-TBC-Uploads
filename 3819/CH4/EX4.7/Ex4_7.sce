// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.7

//Given Data Set in the Problem
dens=1000
g=9.81
d_p=5*3*1.2
d_i=0.8
AG=0.6
AB=1/2*d_i
dens_sw=1025

//Calculations
I_yy=1/12*5*3^3        //MOI about y-y axis
V_sub=3*d_i*5
//hence GM is
BG=AG-AB
GM=I_yy/V_sub-BG
mprintf("The meta centric height is %f m \n",GM)
