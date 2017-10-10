//Example 7.24
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
T=310;//temperature in K
delTf=0.402;//freezing temperature depression in K
Kf=1.86;//freezing point depression constant of waater

//To determine the osmotic pressure
pi=(R*T*delTf)/(Kf);//the osmotic pressure in atm
mprintf('The osmotic pressure = %f atm',pi);
//end