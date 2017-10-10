//Example 8.28
clear;
clc;

//Given
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delGfoO3=163.43;//free energy of formation of O3 in kJ
delGfoO2=0;//free energy of formation of O2 in kJ

//To determine the value of equillibrium constant
delGo=(2*delGfoO3)-(3*delGfoO2);//delGo in kJ
k=(-1000*delGo)/(2.303*R*T);//k=log10(K)
mprintf('Equillibrium constant,K = 10^%f',k);
//end