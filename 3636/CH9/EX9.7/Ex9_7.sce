clc;
clear;
epsilon_0=8.854*10^-14 //in F/cm
epsilon_r=11.8 //in F/cm
epsilon_i=3.9 //in F/cm
d=80*10^-8 //gate oxide thickness in cm
phi_ms=-0.15 //work-function difference in V
Qi=10^11*1.6*10^-19 //fixed oxide charge in C/cm^2
Nd=5*10^17 //in cm^-3
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in J
const=0.0259 //value for kT/e in V

//Calculation
phi_F=const*log(Nd/ni) //in V 
Wm=2*sqrt((epsilon_0*epsilon_r*abs(phi_F))/(e*Nd)) //in cm
Qd=e*Nd*Wm //depletion charges in C
Ci=(epsilon_0*epsilon_i)/d //in F/cm^2
VT=phi_ms-(Qi/Ci)-(Qd/Ci)-(2*phi_F)

mprintf("Voltage of n-channel= %1.2f V",VT)
