//example 5.14

clear;
clc;

//Given:
n=1;//no. of moles
T=300;//temperature[K]
V1=2;//initial volume[m3]
V2=20;//final volume[m3]
R=8.314;//Universal gas constant[J/K/mol]


//To find the work function or Helmholts free energy
A=-n*R*T*log(V2/V1);//Change in work function[J/mol]
printf("The change in Helmholts free energy is %f J/mol",A);