// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.22

//Given Data Set in the Problem
dens=1000
g=9.81
p0=10.143*10^4
Z=2500

//calculations
//1) pressure by hydrostatic law
dens0=1.208
p=p0-integrate("dens0*g","z",0,Z)
mprintf("The pressure by hydrostatic law at 2500m height is %f N/cm^2\n",p*10^-4)
//2)PRESSURE BY ISOTHERMAL LAW  
//p=p0*e^(-gZ/RT)
p=p0*exp(-g*Z*dens0/p0)
mprintf("The pressure BY ISOTHERMAL LAW at 2500m height is %f N/cm^2\n",p*10^-4)
