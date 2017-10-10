clc;
clear;
Na=5*10^18 //doping densities in cm^-3
Nd=5*10^15 //in cm^-3
ni=1.5*10^10 //in cm^-3
Const=0.026//constant for kT/e in V

//Calculation
Vbi=Const*log((Na*Nd)/ni^2)

mprintf("built-in potential= %0.3f V",Vbi) //The answers vary due to round off error
