// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.5

//Given Data Set in the Problem
SG_oil=0.9
z_oil=40
dens_water=1000
g=9.81

//Calculations
dens_oil=SG_oil*dens_water
//Using  pressure=density * g * heighjt of column
p_oil=dens_oil*g*z_oil
z_water=p_oil/(dens_water*g)
mprintf("The corresponding height of water column is %f m of water",z_water)
