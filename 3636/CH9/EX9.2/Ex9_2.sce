clc;
clear;
e=1.6*10^-19 //in eV
epsilon_r=13.1 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
Nc=4.7*10^17 //in cm^-3
Nd=3*10^15 //in cm^-3
phi_Bn=0.9 //barrier height in V
VT=0.3 //threshold voltage in V
Const=0.026 //constant for kT/e in V

//Calculation
phi_n=Const*log(Nc/Nd) //in V
Vbi=phi_Bn-phi_n //built-in voltage in V
Vp=Vbi-VT //pinch-off voltage in V
d=sqrt((2*epsilon_r*epsilon_0*Vp)/(e*Nd))

mprintf("Channel thickness= %0.2e m",d)
//The answer provided in the textbook is wrong
