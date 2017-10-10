// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.17

//Given Data Set in the Problem
B=9.81
g=9.81
dens=1000
pB=B*10^4
dens_oil=0.9*dens
dens_mercury=13.6*dens
//Pressure above X-X in right limb;
p_right=dens*g*60/100+pB
//Pressure above X-X in left limb;
//since ;p_left=dens_mercury*g*10/100+dens_oil*g*20/100+pA....
//and p_left=p_right.,..........hence
pA=(p_right)-(dens_mercury*g*10/100+dens_oil*g*20/100)
mprintf("The absolte pressure at A is %f N/cm^2",pA*10^-4)
