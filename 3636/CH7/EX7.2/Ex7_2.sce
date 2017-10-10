clc;
clear;
Nd=2.01*10^7 //Doping level of n-type silicon in cm^-3
Nc=2.8*10^19 //in cm^-3
e=1.6*10^-19 //in J
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
slope=6*10^13 
Vbi=0.45 //in V
Const=0.026 //constant for kT/e in V

//Calculation
Nd=2/(e*epsilon_r*epsilon_0*slope) //in cm^-3
phi_n=Const*log(Nc/Nd) //in V
phi_Bn=Vbi+phi_n

mprintf("Actual barrier height= %0.3f V",phi_Bn)
