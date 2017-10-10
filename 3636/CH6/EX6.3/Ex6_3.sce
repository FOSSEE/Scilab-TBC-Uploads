clc;
clear;
sigma_p=1000 //conductivity of p-junction in ohm^-1*m^-1
sigma_n=20 //conductivity of n-junction in ohm^-1*m^-1
myu_p=0.05 //in m^2/V*s
myu_n=0.13 //in m^2/V*s
K=8.61*10^-5 //Boltzmann constant in eV/K
T=300 //in K
V=0.4 //forward bias voltage in V
e=1.602*10^-19 //in J
ni=1.5*10^16 //in m^-3
tau_n=10^-6 //minority carrier lifetime in s
tau_p=5*10^-6 //in s
Const=0.026 //constant for kT/e in V
hole_current=0.603*10^-6 //in A
electron_current=0.016*10^-6 //in A

//Calculation
pp0=sigma_p/(e*myu_p) //majority carrier densities in m^-3
nn0=sigma_n/(e*myu_n) //in m^-3
np0=ni^2/pp0 //minority carrier densities in m^-3
pn0=ni^2/nn0 //in m^-3
Dn=myu_n*K*T //in m^2/s
Dp=myu_p*K*T //in m^2/s
Ln=sqrt(Dn*tau_n) //in m
Lp=sqrt(Dp*tau_p) //in m
Js=(((e*np0*Ln)/tau_n)+((e*pn0*Lp)/tau_p))
Ratio=(hole_current)/(electron_current)
J=Js*(exp(V/Const)-1)

mprintf("1)\nReverse bias stauration current density= %0.3e A/m^2\n",Js) //The answers vary due to round off error
mprintf("2)\nRatio of hole to electron current= %2.2f \n",Ratio)
mprintf("3)\nTotal current density= %2.2f A/m^2",J) //The answers vary due to round off error

