//Example 5.1
clear;
clc;

//Given
n=4;//moles of gas
P1=2.02;//initial pressure in 10^5 N m^-2
P2=4.04;//final pressure in 10^5 N m^-2
R=8.314;//gas constant in J K^-1 mol^-1
T=300//temperature in K

//To determine the free energy change delG
delG=n*R*T*log(P2/P1);//the free energy change in J
mprintf('Free energy change = %f J',delG);
//end