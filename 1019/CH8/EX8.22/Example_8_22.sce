//Example 8.22
clear;
clc;

//Given
T=298;//Temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
k=4.814-(2059/T);//k=log(K),where K is the equillibrium constant

//To determine the values of delGo,delHo and delSo
delSo=4.814*R;//entropy change in J K^-1 mol^-1
delGo=-R*T*k;//free energy change in J mol^-1
delHo=delGo+(T*delSo);//enthalpy change in J mol^-1
mprintf('delHo = %f J mol^-1',delHo);
mprintf('\n delGo = %f J mol^-1',delGo);
mprintf('\n delSo = %f J K^-1 mol^-1',delSo);
//end