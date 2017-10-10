clc;
clear;
Nd=5*10^16 //in cm^-3
Na=10^19 //in cm^-3 
d=1.2*10^-4 //in cm
e=1.6*10^-19// in J
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
L=18*10^-4 //in cm
W=80*10^-4 //in micro-W
myu_n=1350 //in cm^2/V*s
ni=1.5*10^10 //in cm^3
VGS=0 //in V
Const=0.026 //constant for kT/e in V

//Calculation
Vp=(e*Nd*d^2)/(2*epsilon_r*epsilon_0) //Pitch-off voltage in V
Ip=(W*myu_n*e^2*Nd^2*d^3)/(epsilon_r*epsilon_0*L) //Pitch-off current in A
Vbi=Const*log((Na*Nd)/ni^2) //in V
ID=Ip*(1/3-((VGS+Vbi)/Vp)+(2/3)*((VGS+Vbi)/Vp)^3/2)

mprintf("a) Pitch-off voltage= %1.1f V\n",Vp)
mprintf("b) Pitch-off current= %.3e A\n",Ip)
mprintf("c) Drain current at pinch-off= %.2e A",ID) //The answers vary dueto round off error
