// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.12


//Given Data Set in the Problem
kin_visc=6*10^-4
SG=1.9
dens_water=1000

//Calculations
dens_liquid=SG*dens_water
visc=dens_liquid*kin_visc                   //Kinematic viscosity=Dynamic Viscosity/density of liquid
mprintf("The Dynamic viscosity of th liquid is %f poise \n",visc*10)

