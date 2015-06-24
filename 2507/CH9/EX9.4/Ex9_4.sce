clc
clear
printf("Example 9.4 | Page number 256 \n\n");
//Calculate Cp of air
//Given Data
Cv = 718 //J/kgK //specific at constant volume
M = 28.97 //kg/kmol //molar mass of air
R = 8314.3 //J/kmolK
//Solution
Cp = (R/M)+Cv //J/kgK //specific heat at constant pressure
printf("Specific heat at constant pressure = %.1f J/kg K",Cp)
