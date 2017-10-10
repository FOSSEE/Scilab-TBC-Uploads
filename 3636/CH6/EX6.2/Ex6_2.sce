clc;
clear;
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in J
Na=10^16 //doping density in cm^-3
Nd=5*10^16 //in cm^-3
Dn=25 //in cm^2/s
Dp=10 //in cm^2/s
tau_p0=4*10^-7 //in s
tau_n0=2*10^-7 //in s

//Calculation
Js=e*ni^2*((1/Na)*sqrt(Dn/tau_n0)+(1/Nd)*sqrt(Dp/tau_p0))

mprintf("Reverse saturation current density= %1.2e A/cm^2",Js) //The answers vary due to round off error
