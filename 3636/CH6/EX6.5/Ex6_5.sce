clc;
clear;
ni=1.5*10^10 //in cm^-3
epsilon_si=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
e=1.6*10^-19 //in J
Na=10^16 //in cm^-3
Nd=5*10^16 //in cm^-3
tau_p0=4*10^-7 //in s
tau_n0=2*10^-7 //in s

//Calculation 
W=(((2*epsilon_si*epsilon_0)*(Na+Nd)*4)/(e*Na*Nd))^0.5 //in micro-m
tau_m=(tau_p0+tau_n0)/2 //in s
Jgen=(e*ni*W)/(2*tau_m) 
 
mprintf("reverse-bias generation current density= %1.2e A/cm^2",Jgen) //The answers vary due to round off error
