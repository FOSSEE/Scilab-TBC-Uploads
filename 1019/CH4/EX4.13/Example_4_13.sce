//Example 4.13
clear;
clc;

//Given
R=0.082;// gas constant in dm^3 atm K^-1 mol^-1
R1=8.314;// gas constant in J K^-1 mol^-1
T1=298; //initial temperature in K
T2=373; //final temperature in K
V1=0.5;//initial volume in dm^3
V2=1;//final volume in dm^3
P1=1;//initial pressure in atm
Cv=12.6;//specific heat of the gas at constant volume in J K^-1 mol^-1

//To calculate the entropy change
n=P1*V1/(R*T1);//moles
delS=(n*Cv*log(T2/T1))+(n*R1*log(V2/V1));//entropy change in J K^-1
mprintf('Entropy change = %f J K^-1',delS);
//end