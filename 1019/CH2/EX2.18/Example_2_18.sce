//Example 2.18
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
q=1675;//heat absorbed in J mol^-1
Cp=2.5*R; //specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
n=1;//moles of the gas
T1=273; //initial temperature in K
delH=2078.5;//enthalpy change in J mol^-1
P1=1;//initial pressure in atm

// To determine P2,w,delE and T2
Cv=Cp-R;//specific heat capacity at constant volume of the gas in J K^-1 mol^-1
T2=T1+(delH/Cp);//final temperature in K
delE=n*Cv*(T2-T1);//internal energy change in J mol^-1
w=q-delE;//work done in J mol^-1
P2=(P1*T2)/(T1*2);//final pressure in atm
mprintf('delE = %f J mol^-1',delE);
mprintf('\n work done = %f J mol^-1',w);
mprintf('\n Final temperature = %f K',T2);
mprintf('\n Final pressure = %f atm',P2);
//end