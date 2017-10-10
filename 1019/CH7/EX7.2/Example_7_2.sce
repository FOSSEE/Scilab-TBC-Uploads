//Example 7.2
clear;
clc;

//Given
R=0.08205;//gas constant in dm^3 atm K^-1 mol^-1
b=0.0391;//Van der Waals constant in dm^3 mol^-1
T=1273;//Temperature in K
P=1000;//pressure in atm

//To calculate the fugacity coefficient
k=(b*P)/(R*T);//k=log(f/P)
f=P*exp(k);//fugacity coefficient in atm
mprintf('Fugacity coefficient = %f atm',f);
//end