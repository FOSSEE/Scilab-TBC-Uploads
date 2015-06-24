clear
clc
//to find net entropy change of irreverse process

//Given:
//refer to figure 24-3(a)and (b) from page no. 549
//mass of hot water
m = 0.57//in Kg
//initial temperature of hot water
TiH = 363//in K
//initial temperature of cold water
TiC = 283//in K
//equilibrium temperature
Tf = 323//in K
//specific heat capacity of water
c = 4190//in J/Kg.K

//Solution:
//applying laws of thermodynamics
//applying formula for entropy change for irreversible process
//entropy change of hot water
delta_SH = m*c*log(Tf/TiH)//in J/K
//entropy change of cold water
delta_SC = m*c*log(Tf/TiC)//in J/K
//net entropy change of irreverse process
delta_S = delta_SH+delta_SC//in J/K
delta_SH  = round(delta_SH)
delta_SC  = round(delta_SC)
delta_S = round(delta_S)

printf ("\n\n Entropy change of hot water delta_SH = \n\n %3i J/K" ,delta_SH);
printf ("\n\n Entropy change of cold water delta_SC = \n\n %3i J/K" ,delta_SC);
printf ("\n\n Net entropy change of irreverse process delta_S = \n\n %3i J/K" ,delta_S);
