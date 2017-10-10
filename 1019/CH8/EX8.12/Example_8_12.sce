//Example 8.12
clear;
clc;

//Given
T1=1225;//initial temperature in K
T2=1200;//final temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delHo=216.7;//standard enthalpy of the reaction in kJ
K1=0.00328;//equillibrium constant at temperature T1

//To determine equillibrium constant,delSo and delGo at temperature T2
k=(log(K1)-((1000*delHo/R)*((1/T2)-(1/T1))));//k=log(K2)
K2=exp(k);//equillibrium constant at T2
delGo=R*T2*k/1000;//delGo in kJ mol^-1
delSo=1000*((delHo+delGo)/T2);//delSo in J mol^-1 K^-1
mprintf('equillibrium constant at 1200 K = %f',K2);
mprintf('\n delGo at 1200 K = %f kJ mol^-1',delGo);
mprintf('\n delSo at 1200 K = %f J K^-1 mol^-1',delSo);
//end