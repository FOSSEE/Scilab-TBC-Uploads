// example 6
//Extrapolating Tabular Data with the Clapeyron Equation
clear
clc
hfg=97.100 //in Btu/lbm
R=0.01946 //universal Gas constant in Btu/lbm-R
T1=420 //in R
T2=410 //in R
P1=7.432 //in psia
P2=%e^((hfg/R)*(1/T1-1/T2)+log(P1)) //Saturation pressure at -50R in psia
printf("\n Hence, the Saturation Pressure of Refrigerant 134-a at -50 R  is = %.2f psia. \n",P2);