// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.3


//Given Data Set in the Problem
z=0.3
SG_oil=0.8
SG_mercury=13.6
dens_water=1000
g=9.81

//Calculations
//Pressure of water column
p_w=dens_water*g*z
mprintf("The Pressure due to the water column is %f N/cm^2 \n",p_w*10^-4)

//Pressure of oil column
p_o=dens_water*g*z*SG_oil
mprintf("The Pressure due to the oil column is %f N/cm^2\n ",p_o*10^-4)

//Pressure of water column
p_m=dens_water*g*z*SG_mercury
mprintf("The Pressure due to the mercury column is %f N/cm^2",p_m*10^-4)
