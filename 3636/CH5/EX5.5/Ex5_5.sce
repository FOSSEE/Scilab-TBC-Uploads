clc;
clear;
Na=5*10^18 //doping densities in cm^-3
Nd=5*10^15 //in cm^-3
ni=1.5*10^10 //in cm^-3
VR=3 //voltage in V
epsilon_s=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
Vbi=0.838 //built-in potential in V
e=1.6*10^-19 //in J
A=5*10^-4 //Area in cm^2

//Calculation
Cdep=((e*epsilon_s*epsilon_0*Na*Nd)/(2*(Vbi+VR)*(Na+Nd)))^0.5 //junction capacitance 
Cdep1=Cdep*A

mprintf("Junction Capacitance= %.0g F/cm^2\n",Cdep)
mprintf("Depletion Capacitance= %.0g F",Cdep1)
