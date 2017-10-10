// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.15

//Given Data Set in the Problem
SG1=0.9
SG2=13.6
dens=1000
h=15/100
g=9.81

//Calculations
dens2=SG2*dens
dens1=SG1*dens
delta_p=g*h*(dens2-dens1)
mprintf("The pressure difference is %f N/m^2\n",delta_p)
