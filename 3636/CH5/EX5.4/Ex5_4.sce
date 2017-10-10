clc;
clear;
Na=5*10^18 //doping densities in cm^-3
Nd=5*10^15 //in cm^-3
ni=1.5*10^10 //in cm^-3
VR=4 //voltage in V
epsilon_s=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
Vbi=0.838 //built-in potential in V
e=1.6*10^-19 //in J

//Calculation
W=((2*epsilon_s*epsilon_0*(Vbi+VR)*(Na+Nd))/(e*Na*Nd))^0.5

mprintf("Total space-charge width= %1.2e cm",W)
