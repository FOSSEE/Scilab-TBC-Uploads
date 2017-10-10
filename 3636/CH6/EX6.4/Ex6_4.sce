clc;
clear;
Ip0=0.5*10^-3 //in A
tau_p0=5*10^-7 //in s
Const=0.026 //constant for kT/e in V

//Calculation
Cd0=(1/(2*Const))*tau_p0*Ip0

mprintf("Diffusion Capacitance= %.1e F",Cd0)
//The answers vary due to round off error
