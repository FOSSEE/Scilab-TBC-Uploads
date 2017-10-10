//Example 2.15
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
d1=0.25; //initial gas density in kg mol m^-3
d2=0.083; //final gas density in kg mol m^-3
a=138; //van der waals constant in N m^4 mol^-2
Cv=20.8; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1

// To determine the change in temperature
delT=(a/Cv)*(d2-d1);//temperature change in K
mprintf('Change in temperature = %f K',delT);
//end