// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.4

//Given Data Set in the Problem
P=3.924
dens_water=1000
g=9.81
SG_oil=0.9

//Calculations
//If the fluid is water
z_water=P/(dens_water*g)
mprintf("The height in water column is %f m of water \n",z_water*10^4)

//If the fluid is oil(SG=0.8))
z_oil=P/(dens_water*SG_oil*g)
mprintf("The height in oil column is %f m of oil",z_oil*10^4)
