//Example 8.10
clear;
clc;

//Given
T1=298;//initial temperature in K
T2=308;//final temperature in K
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the value of delHo
delHo=((R*T1*T2*log(2))/(T2-T1))*0.001;//delHo in kJ mol^-1
mprintf('Enthalpy of reaction,delHo = %f kJ mol^-1',delHo);
//end