clc;
clear;
epsilon_0=8.854*10^-14 //in F/cm
epsilon_r=11.8 //in F/cm
epsilon_i=3.9 //in F/cm
d=100*10^-8 //gate oxide thickness in cm
phi_ms=-1.5 //in V
Qi=5*10^10*1.6*10^-19 //fixed oxide charge in C/cm^2
Na=10^18 //in cm^-3
ni=1.5*10^10 //in cm^-3
e=1.6*10^-19 //in J
VB=2.5 //in V
const=0.0259 //value for kT/e in V

//Calculation
Ci=(epsilon_0*epsilon_i)/d //in F/cm^2
VFB=phi_ms-(Qi/Ci) //in V
phi_F=const*log(Na/ni) //in V
W=sqrt((2*epsilon_0*epsilon_r*(2*phi_F))/(e*Na)) //in cm
Qd=-e*Na*W //in C
VT=VFB+(2*phi_F)-(Qd/Ci) //in V
Wm=sqrt((2*epsilon_0*epsilon_r*((2*phi_F)+VB))/(e*Na)) //in cm
Qd1=-e*Na*Wm //in C
VT1=VFB+(2*phi_F)-(Qd1/Ci) //in V

mprintf("Voltage of n-channel Si(1)= %1.2f V\n",VT)
mprintf("Voltage of n-channel Si(2)= %1.3f V",VT1) //The answers vary due to round off error

