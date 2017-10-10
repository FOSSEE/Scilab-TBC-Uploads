//Example 2.17
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
v1=11.2; //initial gas volume in dm^3
Cv=2.5*R; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1
n=2;//moles of the gas
T1=273; //initial temperature in K
T2=373; //final temperature in K

// To determine q,w,delE and delH
Cp=Cv+R;//specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
delE=n*Cv*(T2-T1);//internal energy change in J
delH=delE+(n*R*(T2-T1));//enthalpy change in J
q=delE;//heat absorbed in J
w=n*R*(T2-T1);//work done in J
mprintf('(a) For isochoric process,');
mprintf('\n delE = %f J',delE);
mprintf('\n delH = %f J',delH);
mprintf('\n Heat absorbed,q = %f J',delE);
mprintf('\n (b) For isobaric process,');
mprintf('\n delE = %f J',delE);
mprintf('\n delH = %f J',delH);
mprintf('\n Work done by the system,w = %f J',w);
mprintf('\n Heat absorbed,q = %f J',delE);
//end