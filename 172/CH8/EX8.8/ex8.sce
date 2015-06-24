//example 3
//calculating increase in entropy
clear
clc
m=1 //mass of saturated water vapour
sfg=6.0480 //in kJ/K
T=25 //temperature of surrounding air in celsius
dScm=-m*sfg //change in entropy of control mass in kJ/K
hfg=2257.0 //in kJ/kg
Qtosurroundings=m*hfg //heat transferred to surroundings in kJ
dSsurroundings=Qtosurroundings/(T+273.15) //in kJ/K
dSnet=dScm+dSsurroundings //net increase in entropy in kJ/K
printf(" hence,net increase in entropy of water plus surroundings is dSnet=%.4f kJ/K.\n",dSnet)  