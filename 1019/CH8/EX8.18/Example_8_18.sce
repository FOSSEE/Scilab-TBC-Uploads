//Example 8.18
clear;
clc;

//Given
delHo=241.82;//Enthalpy of reaction in kJ mol^-1
delSo=44.4;//Entropy of the reaction in J K^-1 mol^-1
K=1;//equillibrium constant for the reaction

//To determine the temperature
delGo=0;//since delGo=RTlog(k) and log(1)=0
T=(delHo*1000)/delSo;//temperature in K
mprintf('Temperature at which K=1 is %f K',T);
//end