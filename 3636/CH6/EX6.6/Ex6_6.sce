clc;
clear;
Jn=20 //in A/cm^2
Jp=5 //in A/cm^2
Va=0.65 //in V
Dn=25 //in cm^2/s
Dp=10 ///in cm^2/s
tau_n0=5*10^-7 //in s
tau_p0=5*10^-7 //in s
epsilon_r=11.8 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
e=1.6*10^-19 //in eV
ni=1.5*10^10 //in cm^-3
Const=0.0259 //constant for kT/e in V

//Calculation 
Lp=sqrt(Dp*tau_p0) //in cm
pn0=(Jp*Lp)/(e*Dp*(exp(Va/Const)-1)) //law of mass action in cm^-3
Nd=(ni^2/pn0)
Ln=sqrt(Dn*tau_n0) //in cm
np0=(Jn*Ln)/(e*Dn*(exp((Va/Const))-1)) //in cm^-3
Na=ni^2/np0 

mprintf("Nd= %1.2e cm^-3\n",Nd) //The answers vary due to round off error
mprintf("Na= %1.2e cm^-3",Na)
