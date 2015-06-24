//example 5.13

clear;
clc;

//Given:
T=300;//temperature[K]
n=4;//no. of moles of an ideal gas
P1=2.02*10^5;//initial pressure[N/m2]
P2=4.04*10^5;//final pressure[N/m2]
R=8.314;//Universal gas constant[J/K/mol]

//To find the value of Gibb's free energy
G=n*R*T*log(P2/P1);//[J]
printf(" The change in Gibbs free energy is %f J",G);
