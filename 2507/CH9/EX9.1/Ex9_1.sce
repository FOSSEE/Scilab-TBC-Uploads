clc
clear
printf("Example 9.1 | Page number 253 \n\n");
//Find the volume occupied
//Given Data
m = 6 //kg //mass of nitrogen
M = 28 //kg/kmol //molar mass of nitrogen
R = 8314.3 //kg/kmol
p = 1e5 //Pa //pressure
T = 27+273 //K //temperature
//Solution
V = m*R*T/(p*M)
printf("Volume occupied by nitrogen = %.3f m^3",V)
