clc;
clear;
n0=10^16 //donor atoms in cm^-3
q=1.6*10^-19 //electron charge in J
ni=1.5*10^10 //in cm^-3
Nd=10^16 //Donors added to silicon to make it n-type) in cm^-3
GT=2.25*10^10 //Thermal generation rate of carriers under equilibrium cm^-3/s
gop=10^21 //in cm^-3/s
tau_n=10^-6 //in s
tau_t=2.5*10^-3 //transit time in s
V=1 //in V

//Calculation
//a)
alpha_r=GT/ni^2
tau_p=(alpha_r*n0)^-1
 
//b)
delp=gop*tau_n

//c)
delI=(q*V*gop*tau_n)/tau_t

mprintf("a)\n")
mprintf("lifetime of both type of carriers= %g s\n",tau_p)
mprintf("b)\n")
mprintf("excess carrier concentration= %g cm^-3\n",delp)
mprintf("c)\n")
mprintf("Induced change in current= %.3f A",delI)
