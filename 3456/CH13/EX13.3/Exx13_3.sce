//Example 13.3
//Prediction of long time properties
//Page No. 464
clc;clear;close;

t=10^5;             //in hr
C1=20;               //in no unit
T1=1200;            //in Fahrenheit
T2=1600;            //in Fahrenheit
P_1200=(T1+460)*(log10(t)+C1);
P_1600=(T2+460)*(log10(t)+C1);
printf('\nAt T = 1200 F, P = %g\nAt T = 1600 F, P = %g\nAnd from the master ploy of Astroploy, corresponding stress required are sigma = 78000 psi and sigma = 11000 psi',P_1200,P_1600);
