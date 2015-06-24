clear;
clc;

//Example 2.14
//Caption : Program to find the Enthalpy of Steam

//Given values

rQ=4.15;//[g/s]  flow rate
rQ2=12740;//Rate of Heat addition from resistance heater

//Solution
//del_z and del_u*2 are negligible  if Ws and H1=0..then H2=Q
H2=round(rQ2/rQ);//[J/g]
disp('J/g',H2,'Enthalpy of Steam')

//End