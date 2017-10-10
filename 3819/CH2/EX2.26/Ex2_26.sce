// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.19

//Given Data Set in the Problem
dens=1000
g=9.81
Z=5000
p0=10.143*10^4
t0=15
T0=t0+273.15
dens0=1.285
L=-0.0065

//calculations
R=p0/(dens0*T0)
//we know L=dT/dZ=-g(k-1)/(Rk)
k=g/(L*R+g)
p=p0*(1-(k-1)/k*g*Z*dens0/p0)^(k/(k-1))
mprintf("The pressure when air follows adiabatic law is %f N/cm^2\n",p*10^-4)
