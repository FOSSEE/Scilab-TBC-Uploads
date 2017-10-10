clc;
clear;
n0=5*10^15 //carrier concentration in cm^-3
ni=10^10 //in cm^-3
p0=2*10^4 //in cm^-3
deln=5*10^13 //excess carriers in semiconductor in cm^-3
delp=5*10^13 //in cm^-3
Const=0.026 //constant value for kT/e in V

//Calculation
delE1=Const*log(n0/ni) 
delE2=Const*log((n0+deln)/ni)
delE3=Const*log((p0+delp)/ni)

mprintf("1)\nposition of the Fermi level at thermal equilibrium= %0.4f eV\n",delE1)
mprintf("2)\nquasi-Fermi level for electrons in non-equilibrium= %0.4f eV\n",delE2)
mprintf("3)\nquasi-Fermi level for holes in non-equilibrium= %0.4f eV",delE3)
