//example 5.10

clear;
clc;

//Given:
mass=32;//weight of methane gas[gm]
P1=6*10^5;//Initial temperature[N/m2]
P2=3*10^5;//Final pressure[N/m2]
mol.wt=16;//molecular weight of methane gas[g/mol]
T=298;//Temperature[K]
//Isothermal process
R=8.314;//Universal gas constant[J/K/mol]

//To find the change in entropy of the gas
n=mass/mol.wt;//no. of moles
S=n*R*log(P1/P2);//change in entropy of gas[J/K]
printf("The change in entropy of the gas is %f J/K",S);