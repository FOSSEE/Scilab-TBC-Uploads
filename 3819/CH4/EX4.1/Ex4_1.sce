// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.1

//Given Data Set in the Problem
w=2.5
d=1.5
l=6
dens=650
g=9.81
//calculations
V=w*d*l
W_water=dens*V*g
W_dens=1000*g
V_disp=W_water/W_dens           //weight of wter displaced/weight density of water
mprintf("The Volume of water displaced is %f m^3\n",V_disp)
//Position of Centre of Buoyancy
h=V_disp/(w*l)
mprintf("The Centre of Buoyancy is at %f m from the base\n",h/2)
