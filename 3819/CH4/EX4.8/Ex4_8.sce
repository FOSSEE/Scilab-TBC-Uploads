// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.8

//Given Data Set in the Problem
dens=1000
g=9.81
d=3*2*1
d_i=0.8
AG=1/2
AB=d_i/2

//calculations
//1)Weight of the body
w=dens*g*(3*2*d_i)
mprintf("The Weight of the Body is %f N\n",w)
//2)Meta centric height
I_yy=1/12*3*2^3        //MOI about y-y axis
V_sub=3*2*0.8
BG=AG-AB
//Hence meta centric height is 
GM=I_yy/V_sub-BG
mprintf("The meta centric height is %f m \n",GM)
