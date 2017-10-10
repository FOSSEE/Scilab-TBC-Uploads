// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.9

//Given Data Set in the Problem
SG1=0.9
SG2=13.6
g=9.81

//Calculations
dens1=SG1*1000
dens2=SG2*1000
h2=20/100
h1=h2-12/100
//Equating pressure at 20 cm below th right arm of the tube
p=((dens2*g*h2)-(dens1*g*h1))
mprintf("The Pressure  of fluid in the pipe is %f N/cm^2",p*10^-4)
