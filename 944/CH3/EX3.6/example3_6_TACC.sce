//example 3.6

clear;
clc;

//given:
T1=323;//intial temperature of water[K]
T2=373;//final temperature of water[K]
Cp=75.29;//specific heat of water[J/K/mol]
w=100;//weight of water[g]
mol.wt=18;//molecular weight of water[g/mol]

//to find the change in enthalpy(H) of water 
n=w/mol.wt;//no. of moles of water[moles]
H=(n*Cp*(T2-T1))*0.001;//change in enthalpy of water[J]
printf("The change in enthalpy of water is %f J",H);
