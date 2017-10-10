// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.10

//Given Data Set in the Problem
SG1=0.8
SG2=13.6
dens1=SG1*1000
dens2=13.6*1000
g=9.81
h2=40/100
h1=15/100

//Calculations
//Since, (dens2*g*h2)+(dens1*g*h1)+p=0
p=-((dens2*g*h2)+(dens1*g*h1))
mprintf("The vacuum pressure in the pipe is %f N/cm^2 ",p*10^-4)

