//example 5.5

clear;
clc;
//Given:
T=298;//Temperature [K]
n=1;//no. of moles
V1=500;//initial volume [cm3]
V2=1000;//final volume [cm3]
R=8.314;//Universal gas constant [J/mol/K]

//to find the molar entropy change 
S=R*log(V2/V1)//molar entropy change at constant temperature[J/K]
printf("Molar entropy change of argon = %f J/K", S);
