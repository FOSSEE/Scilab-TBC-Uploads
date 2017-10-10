clc;
clear;
Cj=12*10^-12 //Capacitance in F/cm^2
A=10^-4 //junction Area in A/cm^2
Vr=20 //in V
e=1.6*10^-19 //in J
epsilon_r=11.8 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm

//Calculation
Nd=((2*Cj)/A)^2*(Vr/(2*epsilon_r*epsilon_0*e))

mprintf("Donor Concentration= %1.3e cm^-3",Nd)
