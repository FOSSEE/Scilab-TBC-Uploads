//Example 4.10
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
Cp=2.5*R; //specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
V1=10;//volume of gas in m^3
T1=300; //initial temperature in K
T2=400;//final temperature in K
P=101000;//pressure in N m^-2

//to calculate the entropy change
n=(P*V1*0.001)/(R*T);//moles
delS=n*(Cp*log(T2/T1));//entropy change in J K^-1
mprintf('Change in entropy = %f J K^-1',delS);
//end