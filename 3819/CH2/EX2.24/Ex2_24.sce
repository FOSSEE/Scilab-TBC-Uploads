// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.24

//Given Data Set in the Problem
dens=1000
g=9.81
Z=7500
p0=10.143*10^4
t0=15
T0=t0+273.15
dens0=1.285

//calculations
//1)incompressible
p=p0-integrate("dens0*g","z",0,Z)
mprintf("The pressure when air is incompressible is %f N/cm^2\n",p*10^-4)
//2)isothermal
p=p0*exp(-g*Z*dens0/p0)
mprintf("The pressure when air follows isothermal law is %f N/cm^2\n",p*10^-4)
//3)adiabatic
k=1.4
p=p0*(1-(k-1)/k*g*Z*dens0/p0)^(k/(k-1))
mprintf("The pressure when air follows adiabatic law is %f N/cm^2\n",p*10^-4)
