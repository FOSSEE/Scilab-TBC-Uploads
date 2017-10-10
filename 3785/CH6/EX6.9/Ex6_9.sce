// Example 6_9
clc;funcprot(0);
// Given data
a=1.5;// Radius in cm
W=3;// Length in cm
hbar=5*10^-5;// Clearance in m
mu=2*10^-2;// Viscosity of lubricating oil in Pa s
rho=9*10^2;// Density of lubricating oil in kg/m^3
N=3600;// rpm
n=0.5;// The eccentricity 

// Calculation
// (a)
omega=(2*%pi*N)/60;// s^-1
L=(12*%pi*mu*omega*W*10^-2)*((a*10^-2)^3/(hbar)^2)*(n/((sqrt(1-n^2))*(2+n^2)));// The load force in N
// (b)
T=(4*%pi*mu*omega*W*10^-2)*((a*10^-2)^3/(hbar))*((1+(2*n^2))/((sqrt(1-n^2))*(2+n^2)));// The torque in Nm
P=omega*T;// Power in W
// (c)
Re_h=(rho*omega*a*10^-2*hbar*(1-n^2))/(mu*(2+n^2));// Reynolds number
printf("\n(a)The maximum load F=%1.3e N \n(b)The torque,T=%0.4f Nm \n   The frictional power of the bearing,P=%2.2f W \n(c)The reynolds number,Re_h=%2.2f",L,T,P,Re_h);
Re_h=((a*10^-2)/hbar)
// The answer provided in the text book is wrong
