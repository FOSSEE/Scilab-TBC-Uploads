//Example 4.6
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
Cv=20.8; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1
w=0.1;//weight of the gas in kg
T1=298; //initial temperature in K
P1=30;//initial pressure in atm
P2=10;//final pressure in atm

//to calculate the entropy
Cp=Cv+R;//specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
n=(w*1000)/28;//moles
T2=T1*((Cv+(R*(P2/P1)))/Cp);//final temperature in K
r=(P1*T2)/(T1*P2);//r=V2/V1
delS=(n*Cv*log(T2/T1))+(n*R*log(r));//entropy change in J K^-1
mprintf('Entropy of the system = %f J K^-1',delS);
mprintf('\n final temperature = %f K',T2);
//end