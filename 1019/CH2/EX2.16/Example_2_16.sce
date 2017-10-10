//Example 2.16    
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
p1=5; //initial gas pressure in atm
p2=2; //final gas pressure in atm
Pext=1; //external pressure in atm
Cv=2.5*R; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1
n=1.6;//moles of the gas
T1=300; //initial temperature in K

// To determine q,w,delE and delH
T2=(60+750)/3;//final temperature in K
Cp=Cv+R;//specific heat capacity at constant pressure of the gas in J K^-1 mol^-1
delE=n*Cv*(T2-T1);//internal energy change in J
delH=n*Cp*(T2-T1);//enthalpy change in J
mprintf('q = 0 J');
mprintf('\n delE = %f J',delE);
mprintf('\n delH = %f J',delH);
mprintf('\n w = %f J',delE);
//end