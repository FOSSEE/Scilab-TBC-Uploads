// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.14

//Given Data Set in the Problem
g=9.81
sg1=0.9
dens1=sg1*1000
sg2=13.6
dens2=sg2*1000
h1=20/100
h2=40/100
a_A=1/100
//calculations
pA=(a_A)*(h2*dens2*g-h2*dens1*g)+h2*dens2*g-h1*dens1*g
mprintf("The pressure in the pipe is %f N/cm^2\n",pA*10^-4)
