clc;
clear;
Nd=10^15 //dopant concentration in cm^-3
Na=0 //in cm^-3
tau_p0=10*10^-7 //in s
tau_n0=10*10^-7 //in s
ni=1.5*10^10 //in cm^-3
deln=10^14 //in cm^-3
delp=10^14 //in cm^-3
nt=1.5*10^15 //in cm^-3
pt=1.5*10^15 //in cm^-3

//Calculation
n0=Nd //in cm^-3
p0=ni^2/Nd //in cm^-3
n=n0+deln //in cm^-3
p=p0+delp //in cm^-3
R=((n*p)-ni^2)/(tau_n0*(n+p))

mprintf("Recombination rate= %1.2e cm^-3 s^-1",R)
