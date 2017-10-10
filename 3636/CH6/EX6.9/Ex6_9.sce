clc;
clear;
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in eV
Na=10^16 //doping density in cm^-3 
Nd=10^16 //in cm^-3 
tau_p0=5*10^-7 //in s 
tau_n0=5*10^-7 //in s
Dn=25 //in cm^2/s
Dp=10 //in cm^2/s
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
myu_n=1350 //in cm^2/V*s
myu_p=450 //in cm^2/V*s 
V=0.65 //in V
Const=0.0259 //constant for kT/e in V

//Calculation
pn0=ni^2/Nd //in cm^-3
np0=ni^2/Na //in cm^-3
Lp=sqrt(Dp*tau_p0) //in cm
Ln=sqrt(Dn*tau_n0) //in cm
Js=(((e*Dp*pn0)/Lp)+((e*Dn*pn0)/Lp)) //in A/cm^2
J=Js*(exp(V/Const)-1) //Total current density in A/cm^2
sigma=e*myu_n*Nd //in mho/cm
E=J/sigma

mprintf("Electric field value= %1.2f V/cm",E) //The answer provided in the textbook is wrong
