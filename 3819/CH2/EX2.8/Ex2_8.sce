// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.8

//Given Data Set in the Problem
z1=3
dens1=1.53*10^3
z0=750/1000
g=9.81
dens_w=1000
SG=13.6

//Calculations
//Using , p=density * g * height
p_atm=SG*dens_w*g*z0
p_gauge=dens1*g*z1
p=p_gauge+p_atm
mprintf("The Gauge Pressure is %f N/m^2 \n",p_gauge)
mprintf("The Absolute Pressure is %f N/m^2",p)
