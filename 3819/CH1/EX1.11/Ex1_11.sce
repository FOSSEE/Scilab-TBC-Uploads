// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.11


//Given Data Set in the Problem
visc=0.05/10
kin_visc=0.035/(10^4)
dens_water=1000

//Calculations
dens_oil=visc/kin_visc
SG=dens_oil/dens_water
mprintf("The Specifc Gravity of Oil is %f \n",SG)

