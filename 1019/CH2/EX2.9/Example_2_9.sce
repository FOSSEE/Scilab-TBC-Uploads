//Example 2.9
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
t1=298;// temperature in K
p1=303975;// initial pressure in Pa
v1=1.43;//initial volume in dm^3
v2=2.86;// final volume in dm^3
Cp=29.1;// heat capacity at constant pressure in J mol^-1 K^-1

// To determine t2,p2,w,delH and DelE
Cv=Cp-R;//heat capacity at constant volume
t2=t1*((v1/v2)^(R/Cv));//final temperature in K
p2=p1*((v1/v2)^(Cp/Cv));//final pressure in Pa
n=(p1*v1*0.001)/(R*t1);//number of moles
delE=n*Cv*(t2-t1);//delE in J
w=delE;//work done in J
delH=n*Cp*(t2-t1);//enthalpy change in J
mprintf('Final Temperature = %f K',t2);
mprintf('\n Final Pressure = %f Pa',p2);
mprintf('\n delE = %f J',delE);
mprintf('\n delH = %f J',delH);
mprintf('\n w = %f J',w);
//end