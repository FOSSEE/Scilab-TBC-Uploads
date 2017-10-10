//Example 2.10
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
t1=298;// temperature in K
p1=30000;// initial pressure in N m^-2
p2=10000;// final pressure in N m^-2
Cv=20.8;// heat capacity of CO at constant volume in J K^-1 mol^-1
W=0.1;// weight of CO taken in kg

// To determine t2,w,delH and delE
Cp=Cv+R;//heat capacity at constant pressure
n=W/0.028;//moles of CO
t2=t1*((Cv+((p2/p1)*R))/Cp);//final temperature in K
delE=n*Cv*(t2-t1);//change in internal energy in J
w=delE;//work done in J
delH=n*Cp*(t2-t1);//enthalpy change in J
mprintf('Final Temperature = %f K',t2);
mprintf('\n delE = %f J',delE);
mprintf('\n delH = %f J',delH);
mprintf('\n w = %f J',w);
//end