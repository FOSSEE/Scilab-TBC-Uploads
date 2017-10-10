// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.6

//Given Data Set in the Problem
z1=2
z2=1
S_o=0.9
dens1=1000
dens2=0.9*1000
g=9.81

//Calculations
//At interface (that is , at A)
p_A=dens2*g*z2
mprintf("The Pressure at interface of the liquids is %f N/cm^2\n",p_A/10^4)

//At the bottom
p_B=dens2*g*z2+dens1*g*z1
mprintf("The Pressure at bottom of the tank is %f N/cm^2",p_B/10^4)
