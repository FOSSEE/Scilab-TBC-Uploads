//Example 7.8
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
T=298;//temperature in K
n1=1;//moles of toluene
n2=2;//moles of benzene

//to determine the free energy of mixing
x1=n1/(n1+n2);//mole fraction of toluene
x2=n2/(n1+n2);//mole fraction of benzene
delGmix=R*T*((n1*log(x1))+(n2*log(x2)));//free energy of mixing in J
delSmix=-delGmix/T;//entropy change in J K^-1
mprintf('The free energy of mixing = %f J',delGmix);
mprintf('\n The entropy of mixing = %f J K^-1',delSmix);
//end