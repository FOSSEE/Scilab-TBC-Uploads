clc;
clear;
Na=5*10^16 //in cm^3
Nd=5*10^16 //in cm^3
Dn=25 //in cm^2/s
Dp=10 //in cm^2/s
tau_n0=6*10^-7 //in s
tau_p0=2*10^-7 //in s
VR=6 //in V
GL=5*10^20 //in cm^-3/s
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in Joules
epsilon_s=11.7*8.85*10^-14 //in F/cm
Const=0.026 //constant for KT/e in V

//Calculation
Ln=sqrt(Dn*tau_n0) //in mico-m
Lp=sqrt(Dp*tau_p0) //in micro-m
Vbi=Const*log((Na*Nd)/ni^2) //in V
W=(((2*epsilon_s)/e)*((Na+Nd)/(Na*Nd))*(Vbi+VR))^0.5 //in micro-m
JL=e*GL*(W+Ln+Lp) //photocurrent density

mprintf("steady-state photocurrent density= %0.2f A/cm^2",JL)
