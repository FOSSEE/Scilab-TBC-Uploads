clc;
clear;
e=1.6*10^-19 //in J
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
Na=5*10^16 //in cm^-3
ni=1.5*10^10 //in cm^-3
Const=0.026 //constant for kT/e in V

//Calculation 
phi_pF=Const*log(Na/ni) //in V
WdT=((4*epsilon_r*epsilon_0*phi_pF)/(e*Na))^0.5

mprintf("Maximum space-charge width= %0.2e meter",WdT)
//The answer provided in the textbook is wrong
