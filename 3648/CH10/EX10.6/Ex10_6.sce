//Example 10_6
clc();
clear;
//To determine the mass of the air in flask
p=1.013*10^5   //Units in Pa
v=50*10^-6   //Units in meter^3
M=28    //Units in Kg/Mol
R=8314    //units in J/Kmol K
T=293    //units in K
m=(p*v*M)/(R*T)    //Units in Kg
printf("The mass of air in flask is=")
disp(m)
printf("Kg")
