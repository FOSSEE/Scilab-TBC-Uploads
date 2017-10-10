clc;
clear;
Nd=3*10^15 //Doping level of n-type silicon in cm^-3
Nc=2.8*10^19 //in cm^-3
e=1.6*10^-19 //in J
phi_m=4.5 //work function for chromium in eV
epsilon_si=11.7 //in F/cm
epsilon_0=8.854*10^-14 //in F/cm
xsi=4.01 //electron affinity for Si in eV
Vbi=5 //reverse bias voltage in V
VR=0 //in V

//Calculation
phi_B=phi_m-xsi //in eV
xn=((2*epsilon_si*epsilon_0*(Vbi+VR))/(e*Nd))^0.5 //in cm
Emax=(e*Nd*xn)/(epsilon_si*epsilon_0)
CJ=((e*epsilon_si*epsilon_0*Nd)/(2*(Vbi+VR)))^0.5

mprintf("a)\n")
mprintf("ideal schottky barrier height= %1.2f ev\n",phi_B)
mprintf("b)\n")
mprintf("peak electric field= %1.2e V/cm\n",Emax)
mprintf("c)\n")
mprintf("depletion layer capacitance per unit area= %1.2e F/cm^2",CJ) //The answer provided in the textbook is wrong
