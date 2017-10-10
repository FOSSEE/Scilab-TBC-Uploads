clc;
clear;
phi_m=3.20 //in V
Na=10^15 //in cm^-3
ni=1.5*10^10 //in cm^-3
x=3.25
Eg=1.11 //in eV
e=1.6*10^-19 //in J
Const=0.026 //constant for kT/e in V

//Calculation
phi_pF=Const*log(Na/ni) //in V
phi_ms=(phi_m-(x+(Eg/2)+phi_pF))

mprintf("work-function difference= %0.3f V",phi_ms)
