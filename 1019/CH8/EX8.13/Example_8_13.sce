//Example 8.13
clear;
clc;

//Given
T=1225;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delHo=216.7;//standard enthalpy of the reaction in kJ
K=0.00328;//equillibrium constant at temperature T1

//To determine delSo and delGo at temperature T
delGo=R*T*log(K)/1000;//delGo in kJ mol^-1
delSo=1000*((delHo+delGo)/T);//delSo in J mol^-1 K^-1
mprintf('delGo at 1225 K = %f kJ mol^-1',delGo);
mprintf('\n delSo at 1225 K = %f J K^-1 mol^-1',delSo);
//end