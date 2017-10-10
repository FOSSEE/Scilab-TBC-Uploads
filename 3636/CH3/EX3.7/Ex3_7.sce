clear;
clc;
n0=5*10^16 //doping level of Si with As in cm^-3
myu_n=800 //in cm^2/Vs
Ix=2*10^-3 //in A
Bz=5*10^-5 //in A
d=2*10^-2 //in cm
e=1.6*10^-19 //in J

//Calculation
p=1/(e*myu_n*n0) 
RH=-1/(e*n0) 
VH=(Ix*Bz*RH)/(d)

mprintf("Resistivity= %0.3f ohm-cm\n",p)
mprintf("Hall coefficient= %i cm^3/c\n",RH)
mprintf("Hall Voltage= %.2e V",VH)
